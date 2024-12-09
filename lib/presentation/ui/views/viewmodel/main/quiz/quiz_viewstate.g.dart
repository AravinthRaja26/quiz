// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quiz_viewstate.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$QuizViewStateCWProxy {
  QuizViewState isLoading(bool? isLoading);

  QuizViewState quizModel(QuizModel? quizModel);

  QuizViewState currentIndex(int? currentIndex);

  QuizViewState currentAnswer(String? currentAnswer);

  QuizViewState selectedAnsewerId(int? selectedAnsewerId);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `QuizViewState(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// QuizViewState(...).copyWith(id: 12, name: "My name")
  /// ````
  QuizViewState call({
    bool? isLoading,
    QuizModel? quizModel,
    int? currentIndex,
    String? currentAnswer,
    int? selectedAnsewerId,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfQuizViewState.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfQuizViewState.copyWith.fieldName(...)`
class _$QuizViewStateCWProxyImpl implements _$QuizViewStateCWProxy {
  const _$QuizViewStateCWProxyImpl(this._value);

  final QuizViewState _value;

  @override
  QuizViewState isLoading(bool? isLoading) => this(isLoading: isLoading);

  @override
  QuizViewState quizModel(QuizModel? quizModel) => this(quizModel: quizModel);

  @override
  QuizViewState currentIndex(int? currentIndex) =>
      this(currentIndex: currentIndex);

  @override
  QuizViewState currentAnswer(String? currentAnswer) =>
      this(currentAnswer: currentAnswer);

  @override
  QuizViewState selectedAnsewerId(int? selectedAnsewerId) =>
      this(selectedAnsewerId: selectedAnsewerId);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `QuizViewState(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// QuizViewState(...).copyWith(id: 12, name: "My name")
  /// ````
  QuizViewState call({
    Object? isLoading = const $CopyWithPlaceholder(),
    Object? quizModel = const $CopyWithPlaceholder(),
    Object? currentIndex = const $CopyWithPlaceholder(),
    Object? currentAnswer = const $CopyWithPlaceholder(),
    Object? selectedAnsewerId = const $CopyWithPlaceholder(),
  }) {
    return QuizViewState(
      isLoading: isLoading == const $CopyWithPlaceholder()
          ? _value.isLoading
          // ignore: cast_nullable_to_non_nullable
          : isLoading as bool?,
      quizModel: quizModel == const $CopyWithPlaceholder()
          ? _value.quizModel
          // ignore: cast_nullable_to_non_nullable
          : quizModel as QuizModel?,
      currentIndex: currentIndex == const $CopyWithPlaceholder()
          ? _value.currentIndex
          // ignore: cast_nullable_to_non_nullable
          : currentIndex as int?,
      currentAnswer: currentAnswer == const $CopyWithPlaceholder()
          ? _value.currentAnswer
          // ignore: cast_nullable_to_non_nullable
          : currentAnswer as String?,
      selectedAnsewerId: selectedAnsewerId == const $CopyWithPlaceholder()
          ? _value.selectedAnsewerId
          // ignore: cast_nullable_to_non_nullable
          : selectedAnsewerId as int?,
    );
  }
}

extension $QuizViewStateCopyWith on QuizViewState {
  /// Returns a callable class that can be used as follows: `instanceOfQuizViewState.copyWith(...)` or like so:`instanceOfQuizViewState.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$QuizViewStateCWProxy get copyWith => _$QuizViewStateCWProxyImpl(this);
}
