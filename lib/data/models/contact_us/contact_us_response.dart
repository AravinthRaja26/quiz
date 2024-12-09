import 'package:nikitchem/data/mixin/serializable.mixin.dart';
import 'package:json_annotation/json_annotation.dart';
part 'contact_us_response.g.dart';

///
@JsonSerializable(fieldRename: FieldRename.snake)
class ContactUsResponse with SerializableMixin{
  ///
  final Data? data;
  ///
  final String? status;


  ///
  const ContactUsResponse({this.data, this.status});
  @override
  Map<String, dynamic> toJson() =>_$ContactUsResponseToJson(this);

  ///
  static ContactUsResponse fromJson(Map<String,dynamic>json)=>_$ContactUsResponseFromJson(json);

}

///
@JsonSerializable(fieldRename: FieldRename.snake)
class Data with SerializableMixin {
  ///
  final String? data;
  ///
  final String? errorMessage;
  ///
  final String? errorCode;

  ///
  const Data({this.data, this.errorMessage, this.errorCode});


  @override
  Map<String, dynamic> toJson() =>_$DataToJson(this);

  ///
  static Data fromJson(Map<String,dynamic>json)=>_$DataFromJson(json);
}