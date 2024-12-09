
import 'package:nikitchem/data/mixin/serializable.mixin.dart';
import 'package:json_annotation/json_annotation.dart';
part 'contactUsRequstBody.g.dart';
///
@JsonSerializable(fieldRename: FieldRename.snake)
class ContactUsRequestBody with SerializableMixin{
  ///
  final String? message;
  ///
  final String? email;
  ///
  final String? subject;
  ///
  final String? mobile;


  ///
  const ContactUsRequestBody({this.message, this.email, this.subject, this.mobile});
  @override
  Map<String, dynamic> toJson() =>_$ContactUsRequestBodyToJson(this);

  ///
  static ContactUsRequestBody fromJson(Map<String,dynamic>json)=>_$ContactUsRequestBodyFromJson(json);

}