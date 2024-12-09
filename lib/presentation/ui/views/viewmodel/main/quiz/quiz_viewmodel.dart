import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:nikitchem/data/abstract/abstract.viewmodel.dart';

import 'package:event_bus_plus/res/app_event.dart';
import 'package:flutter/material.dart';
import 'package:nikitchem/data/injection/injector.dart';
import 'package:nikitchem/data/mixin/event_mixin.dart';
import 'package:nikitchem/data/models/quiz/quiz_model.dart';
import 'package:nikitchem/data/storage/local_storage/local.storage.dart';
import 'package:nikitchem/presentation/ui/custom_widget/app_snack_bar.dart';
import 'package:nikitchem/presentation/ui/views/viewmodel/main/quiz/quiz_viewstate.dart';

import 'local_service.dart';

///
class QuizViewModel extends BaseViewModel<QuizViewState>
    with EventMixin<AppEvent>, WidgetsBindingObserver {
  List<Map<String, dynamic>> _quizData = [];
LocalStorage localStorage= injector<LocalStorage>();
  ///
  // LocalStoreService localStoreService = LocalStoreService.instance;
   DatabaseService? dbService;
  ///
  QuizViewModel() : super(QuizViewState.initial());

  ///
  PageController controller =
      PageController(viewportFraction: 1, keepPage: false);

  ///
  ///
  ///
  init() {
    WidgetsBinding.instance.addPostFrameCallback((Duration val) async {
      dbService = DatabaseService();
      _loadData();
      // _quizData = await DatabaseService().getAllQuiz();
      // if (_quizData.isEmpty) {
      //   addQuiz  ();
      // }
    });

  }

  Future<void> _loadProgress() async {
    for (var i = 0; i < _quizData.length; i++) {
      if (_quizData[i]['userAnswer'] == null) {
        // setState(() {
        //   _currentQuestionIndex = i;
        // });

        break;
      } else {
        if (_quizData[i]['userAnswer'] != null) {
          if (_quizData[i]['userAnswer'] == _quizData[i]['correctAnswer']) {
            // setState(() {
            //   _score = int.parse(_quizData[i]['score'].toString());
            // });
          }
        }
      }
    }
  }

  ///
  void pageChange(int value) {
    setState(state.copyWith(currentIndex: value));
  }

  Future<void> _loadData() async {
    setState(state.copyWith(isLoading: true));
    _quizData = await dbService?.getAllQuiz();

    QuizModel quizModel = QuizModel();
    List<String> qq = [];
    List<Quiz> temp = quizModel.quiz ?? [];

    if (_quizData.isNotEmpty) {
      _quizData.forEach((Map<String, dynamic> element) {
        List<String> options = (jsonDecode(element['options'].toString()) as List<dynamic>)
            .map((e) => e.toString())
            .toList();

        qq.clear();
        options.forEach((String option) {
          qq.add(option);
        });

        Map<String, dynamic> mutableElement = Map<String, dynamic>.from(element);

        mutableElement['options'] = qq;


        temp.add(Quiz.fromJson(mutableElement));
      });

      quizModel.quiz = temp;
      setState( state.copyWith(quizModel: quizModel));

      print('==> First option: ${quizModel.quiz?.first.selectedAnswer}');
      setState(state.copyWith(isLoading: false));
    } else {
      await loadJsonData();
      setState(state.copyWith(isLoading: false));
    }

    controller.jumpTo(localStorage.retrieveInt('currentPageIndex')?.toDouble()??0);


  }



  ///
  Future<void> loadJsonData() async {

    String data = await rootBundle.loadString('assets/quizJson/quizz.json');
    QuizModel quizData = QuizModel.fromJson(jsonDecode(data));
    if (quizData.quiz != null && quizData.quiz?.isNotEmpty == true) {
      for (Quiz quiz in quizData.quiz ?? []) {
        dbService?.insertQuiz(<String,dynamic>{
          'question': '${quiz.question}',
          'options': json.encode(quiz.options),
          'correctAnswer': '${quiz.correctAnswer}',
          'marks': quiz.marks,
        });
      }
      setState(state.copyWith(quizModel: quizData));
    } else {
      print('::=>{quizData}');
    }
  }


  ///
  void nextQuiz(BuildContext context) {
    QuizModel? tempQuiz = state.quizModel;
    localStorage.save('currentPageIndex', state.currentIndex);
    if (tempQuiz?.quiz?[state.currentIndex ?? 0].id ==
            state.selectedAnsewerId &&
        tempQuiz?.quiz?[state.currentIndex!].isSelectedThis == 1) {
      setState(state.copyWith(currentIndex: controller.page!.toInt() + 1));
      controller.nextPage(
          duration: const Duration(milliseconds: 400),
          curve: Curves.easeInSine);
      dbService?.saveAnswer(tempQuiz?.quiz?[state.currentIndex ?? 0].id??0,answer:  state.currentAnswer??'',select: 1);
    } else {
      AppSnackBar.warningSnackBar(context,
          contentMessage: 'Should be a select the answer');
    }
  }

  ///
  void previousQuiz() {
    setState(state.copyWith(currentIndex: controller.page!.toInt() - 1));
    controller.previousPage(
        duration: const Duration(milliseconds: 400), curve: Curves.easeInSine);
  }

  ///
  void selectAnswer(
      {required String value,
      required List<String> option,
      required int index}) {
    QuizModel? tempQuiz = state.quizModel;

    for (Quiz quiz in tempQuiz?.quiz ?? <Quiz>[]) {
      if (option == quiz.options) {
        print('==>object');
        quiz.selectedAnswer = value;
        quiz.isSelectedThis = 1;
        setState(state.copyWith(selectedAnsewerId: quiz.id));
      }
    }
    setState(state.copyWith(
        currentAnswer: value, quizModel: tempQuiz, currentIndex: index));
  }

  void submitButton() {

    for(Quiz quiz in state.quizModel?.quiz??<Quiz>[]){
      dbService?.saveAnswer(quiz.id??0,select: null);
    }
    controller.jumpTo(0);
  }
}
