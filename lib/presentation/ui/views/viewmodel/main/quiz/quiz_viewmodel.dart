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
  LocalStorage localStorage = injector<LocalStorage>();

  ///
  // LocalStoreService localStoreService = LocalStoreService.instance;
  DatabaseService? dbService;

  ///
  QuizViewModel() : super(QuizViewState.initial());

  ///
  PageController? controller;

  ///
  ///
  ///
  init() {
    WidgetsBinding.instance.addPostFrameCallback((Duration val) async {
      setState(
        state.copyWith(
            isLoading: true,
            currentIndex: localStorage.retrieveInt('currentPageIndex') ?? 0),
      );
      dbService = DatabaseService();
      await _loadData();
      setState(
        state.copyWith(
            isLoading: false,
            currentIndex: localStorage.retrieveInt('currentPageIndex') ?? 0),
      );
      controller = PageController(
          viewportFraction: 1,
          keepPage: false,
          initialPage: localStorage.retrieveInt('currentPageIndex') ?? 0);
    });
  }

  ///
  void pageChange(int value) {
    setState(state.copyWith(currentIndex: value));
  }

  Future<void> _loadData() async {
    setState(state.copyWith(isLoading: true));
    _quizData = await dbService?.getAllQuiz();

    QuizModel quizModel = QuizModel();
    List<String> optionList = [];
    List<Quiz> temp = quizModel.quiz ?? [];

    if (_quizData.isNotEmpty) {
      for (Map<String, dynamic> element in _quizData) {
        List<String> options =
            (jsonDecode(element['options'].toString()) as List<dynamic>)
                .map((e) => e.toString())
                .toList();

        optionList.clear();
        for (String option in options) {
          optionList.add(option);
        }

        Map<String, dynamic> mutableElement =
            Map<String, dynamic>.from(element);

        mutableElement['options'] = optionList;

        temp.add(Quiz.fromJson(mutableElement));
      }
      quizModel.quiz = temp;
      setState(state.copyWith(quizModel: quizModel));

      setState(state.copyWith(isLoading: false));
    } else {
      await loadJsonData();
      setState(state.copyWith(isLoading: false));
    }
  }

  ///
  Future<void> loadJsonData() async {
    String data = await rootBundle.loadString('assets/quizJson/quizz.json');
    QuizModel quizData = QuizModel.fromJson(jsonDecode(data));
    if (quizData.quiz != null && quizData.quiz?.isNotEmpty == true) {
      for (Quiz quiz in quizData.quiz ?? []) {
        dbService?.insertQuiz(<String, dynamic>{
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

    if (tempQuiz?.quiz?[state.currentIndex ?? 0].selectedAnswer != null &&
        tempQuiz?.quiz?[state.currentIndex!].isSelectedThis == 1) {
      setState(state.copyWith(currentIndex: controller!.page!.toInt() + 1));
      controller?.nextPage(
          duration: const Duration(milliseconds: 400),
          curve: Curves.easeInSine);
      dbService?.saveAnswer(state.selectedAnsewerId ?? 0,
          answer: state.currentAnswer ?? '', select: 1);
      localStorage.save('currentPageIndex', state.currentIndex!);
    } else {
      AppSnackBar.warningSnackBar(context,
          contentMessage: 'Should be a select the answer');
    }
  }

  ///
  void previousQuiz() {
    setState(state.copyWith(currentIndex: controller!.page!.toInt() - 1));
    controller?.previousPage(
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
        print('==>object${quiz.id}');
        quiz.selectedAnswer = value;
        quiz.isSelectedThis = 1;
        setState(state.copyWith(selectedAnsewerId: quiz.id));
      }
    }
    setState(state.copyWith(
        currentAnswer: value, quizModel: tempQuiz, currentIndex: index));
  }

  ///
  void submitButton(BuildContext context) {
    QuizModel? tempQuiz = state.quizModel;
    if (tempQuiz?.quiz?[state.currentIndex ?? 0].selectedAnswer != null &&
        tempQuiz?.quiz?[state.currentIndex!].isSelectedThis == 1) {
      collectTheAnswer(context);
    } else {
      AppSnackBar.warningSnackBar(context,
          contentMessage: 'Should be a select the answer');
    }
  }


  ///
 void collectTheAnswer(BuildContext context){
    int totalMark = 0;
    for(Quiz quiz in state.quizModel?.quiz??[]){
      if(quiz.selectedAnswer !=null && quiz.correctAnswer !=null &&quiz.selectedAnswer == quiz.correctAnswer){
        totalMark += 1;
      }
    }
    _showMyDialog(context,mark: totalMark);

  }
  Future<void> _showMyDialog(BuildContext context,{int? mark}) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Result'),
          content:  SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text('You have getting $mark out of ${state.quizModel?.quiz?.length}'),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(

              child: const Text('cancel'),
              onPressed: () async {
                await Navigator.of(context).maybePop();

              },
            ),
            TextButton(

              child: const Text('Again Start'),
              onPressed: () async {
                await Navigator.of(context).maybePop();
                for (Quiz quiz in state.quizModel?.quiz ?? <Quiz>[]) {
                  dbService?.saveAnswer(quiz.id ?? 0, select: null);
                }
                state.quizModel?.quiz?.clear();
                localStorage.save('currentPageIndex', 0);
                AppSnackBar.successSnackBar(context, contentMessage: 'Submit you Answer');
                init();
                controller?.jumpTo(0);
              },
            ),
          ],
        );
      },
    );
  }

}
