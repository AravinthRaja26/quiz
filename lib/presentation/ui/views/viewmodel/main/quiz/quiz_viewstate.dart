import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:nikitchem/data/abstract/abstract.viewmodel.dart';
import 'package:nikitchem/data/models/quiz/quiz_model.dart';

part 'quiz_viewstate.g.dart';

///
@CopyWith()
class QuizViewState extends ViewState {
  ///
  final bool? isLoading;
///
  final int? currentIndex;
  final int? qusId;
  ///
  final String? currentAnswer;
  ///
  final int? selectedAnsewerId;

  ///
  final QuizModel? quizModel;

  ///
  QuizViewState(
      {required this.isLoading,
      required this.quizModel,
      required this.currentIndex,
      required this.currentAnswer,
      required this.qusId,
      required this.selectedAnsewerId});

  ///
  /// Named Constructor for initial state
  ///
  QuizViewState.initial()
      : isLoading = false,
        quizModel = QuizModel(),
        currentIndex = 0,
        qusId = 0,
        currentAnswer = '',
        selectedAnsewerId = 0;

  ///
  /// Props
  ///
  @override
  List<Object?> get props => <Object?>[
        isLoading,
        quizModel,
        currentIndex,qusId,
        currentAnswer,
        selectedAnsewerId
      ];
}
