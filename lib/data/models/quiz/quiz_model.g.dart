// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quiz_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

QuizModel _$QuizModelFromJson(Map<String, dynamic> json) => QuizModel(
      quiz: (json['quiz'] as List<dynamic>?)
          ?.map((e) => Quiz.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$QuizModelToJson(QuizModel instance) => <String, dynamic>{
      'quiz': instance.quiz,
    };

Quiz _$QuizFromJson(Map<String, dynamic> json) => Quiz(
      id: (json['id'] as num?)?.toInt(),
      question: json['question'] as String?,
      options:
          (json['options'] as List<dynamic>?)?.map((e) => e as String).toList(),
      correctAnswer: json['correctAnswer'] as String?,
      marks: (json['marks'] as num?)?.toInt(),
      selectedAnswer: json['selectedAnswer'] as String?,
      isSelectedThis: (json['isSelectedThis'] as num?)?.toInt(),
    );

Map<String, dynamic> _$QuizToJson(Quiz instance) => <String, dynamic>{
      'id': instance.id,
      'question': instance.question,
      'options': instance.options,
      'correctAnswer': instance.correctAnswer,
      'selectedAnswer': instance.selectedAnswer,
      'isSelectedThis': instance.isSelectedThis,
      'marks': instance.marks,
    };
