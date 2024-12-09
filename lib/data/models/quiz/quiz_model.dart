
import 'package:json_annotation/json_annotation.dart';

part 'quiz_model.g.dart';

///
@JsonSerializable()
class QuizModel  {
  ///
  List<Quiz>? quiz;

  ///
  QuizModel({this.quiz});

  //
  static QuizModel fromJson(Map<String, dynamic> json) =>
      _$QuizModelFromJson(json);

  //
  @override
  Map<String, dynamic> toJson() {
    return _$QuizModelToJson(this);
  }
}


@JsonSerializable()
class Quiz {
  int? id;
  String? question;
  List<String>? options;
  String? correctAnswer;
  String? selectedAnswer = '';
  int? isSelectedThis = 0;
  int? marks;

  Quiz({this.id, this.question, this.options, this.correctAnswer, this.marks,this.selectedAnswer,this.isSelectedThis});

  //
  static Quiz fromJson(Map<String, dynamic> json) =>
      _$QuizFromJson(json);

  //
  @override
  Map<String, dynamic> toJson() {
    return _$QuizToJson(this);
  }
}
