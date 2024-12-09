import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:nikitchem/data/abstract/abstract.viewmodel.dart';
import 'package:nikitchem/data/models/quiz/quiz_model.dart';
import 'package:nikitchem/presentation/styles/custom_colors.dart';
import 'package:nikitchem/presentation/ui/custom_widget/app_snack_bar.dart';
import 'package:widget_and_text_animator/widget_and_text_animator.dart';
import 'package:nikitchem/presentation/ui/views/viewmodel/main/quiz/quiz_viewmodel.dart';
import 'package:nikitchem/presentation/ui/views/viewmodel/main/quiz/quiz_viewmodel_provider.dart';
import 'package:retrofit/dio.dart';

///
@RoutePage(name: 'quizScreen')
class QuizScreen extends StatelessWidget {
  ///
  const QuizScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return QuizViewmodelProvider(builder: (BuildContext context, _) {
      return Scaffold(
          appBar: AppBar(
            title: const Text(
              'Quiz',
              style: TextStyle(color: CustomColors.black),
            ),
          ),
          body: const _QuizBody());
    });
  }
}

class _QuizBody extends StatelessWidget {
  final QuizModel? quizModel;

  const _QuizBody({super.key, this.quizModel});

  @override
  Widget build(BuildContext context) {
    QuizViewModel viewModel = BaseViewModel.watch<QuizViewModel>(context);

    return viewModel.state.isLoading == true?Center(child: CircularProgressIndicator(),):Column(
      children: <Widget>[
        SizedBox(
          height: MediaQuery.of(context).size.height / 1.5,
          child: PageView.builder(
            controller: viewModel.controller,
            onPageChanged: (int value) {
              viewModel.pageChange(value);
            },
            itemCount: viewModel.state.quizModel?.quiz?.length ?? 0,
            itemBuilder: (BuildContext context, int index) => Column(
              children: [
                const SizedBox(
                  height: 16,
                ),
                Text(
                  'Question ${index + 1}',
                  style: const TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.w300,
                  ),
                ),

                /// questions
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: TextAnimator(
                    viewModel.state.quizModel?.quiz?[index].question ?? '',
                    style: const TextStyle(
                      fontSize: 22.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),

                const SizedBox(
                  height: 32,
                ),

                /// answers widget
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child:  WidgetAnimator(
                    incomingEffect: WidgetTransitionEffects.incomingSlideInFromBottom(),
                    child: _Answers(
                        option: viewModel.state.quizModel?.quiz?[index].options,
                        quiz: viewModel.state.quizModel?.quiz?[index],
                        index : index),
                  ),
                )
              ],
            ),
          ),
        ),
        Align(
            alignment: Alignment.bottomCenter,
            child: _PageIndicator(
              quizModel: viewModel.state.quizModel,
            )),
        const SizedBox(
          height: 32,
        ),
        const _PageHandlingButton()
      ],
    );
  }
}

class _PageIndicator extends StatelessWidget {
  final QuizModel? quizModel;

  const _PageIndicator({super.key, this.quizModel});

  @override
  Widget build(BuildContext context) {
    QuizViewModel viewModel = BaseViewModel.watch<QuizViewModel>(context);

    return SizedBox(
      height: 26,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: quizModel?.quiz?.length ?? 0,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) => Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4.0),
            child: Container(
              width: 30,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: viewModel.state.currentIndex == index
                    ? Colors.red
                    : Colors.white,
                border: Border.all(color: Colors.black),
              ),
              child: Padding(
                padding: const EdgeInsets.all(3.0),
                child: Center(
                    child: Text(
                  '${index + 1}',
                  style: TextStyle(
                    fontSize: 12.0,
                    color: viewModel.state.currentIndex == index
                        ? Colors.white
                        : Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                )),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _Answers extends StatelessWidget {
  final List<String>? option;
  final Quiz? quiz;
  final int? index;

  const _Answers({super.key, this.option, this.quiz,this.index});

  @override
  Widget build(BuildContext context) {
    QuizViewModel viewModel = BaseViewModel.watch<QuizViewModel>(context);

    return Container(
      padding:
          const EdgeInsets.only(top: 32.0, bottom: 12, right: 16, left: 16),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30), color: Colors.white),
      child: Wrap(
          children: List.generate(
        option?.length ?? 0,
        (int optionIndex) => Padding(
          padding: const EdgeInsets.only(bottom: 16.0),
          child: InkWell(
            onTap: () {
              print('${option?[optionIndex]}');
              viewModel.selectAnswer(
                  value: option?[optionIndex] ?? '', option: option ?? [],index : index??0);
              // AppSnackBar.warningSnackBar(context,
              //     contentMessage: '${option?[optionIndex]}');
            },
            child: Container(
              width: MediaQuery.of(context).size.width / 1.1,
              padding: const EdgeInsets.symmetric(horizontal: 32),
              decoration: BoxDecoration(
                  color: option?[optionIndex] == quiz?.selectedAnswer
                      ? Colors.green.shade300
                      : CustomColors.white,
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(16)),
              child: Padding(
                padding: const EdgeInsets.only(top: 8.0, bottom: 8),
                child: Center(
                  child: Text(
                    '${option?[optionIndex]}',
                    style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.normal,
                        color: option?[optionIndex] ==
                                viewModel.state.currentAnswer
                            ? CustomColors.white
                            : Colors.black),
                  ),
                ),
              ),
            ),
          ),
        ),
      )),
    );
  }
}

class _PageHandlingButton extends StatelessWidget {
  const _PageHandlingButton({super.key});

  @override
  Widget build(BuildContext context) {
    QuizViewModel viewModel = BaseViewModel.watch<QuizViewModel>(context);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          OutlinedButton(
              onPressed: () {
                viewModel.previousQuiz();
              },
              child: const Text('Previous')),
          OutlinedButton(
            onPressed: () {if(viewModel.state.quizModel!.quiz!.length.toInt() - 1 == viewModel.state.currentIndex){
              AppSnackBar.successSnackBar(context,contentMessage: 'Submit you Answer');
              viewModel.submitButton();
            }else{
              viewModel.nextQuiz(context);}
            },
            style: const ButtonStyle(),
            child: Text(viewModel.state.quizModel!.quiz!.length - 1 == viewModel.state.currentIndex?'Submit': 'Next'),
          )
        ],
      ),
    );
  }
}
