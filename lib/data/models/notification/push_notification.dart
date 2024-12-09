

import 'package:nikitchem/data/mixin/serializable.mixin.dart';
import 'package:json_annotation/json_annotation.dart';
part 'push_notification.g.dart';
///
@JsonSerializable(fieldRename: FieldRename.snake)
class PushNotificationResponse with SerializableMixin {
  ///
  final String? title;
  ///
  final String? message;

  ///

  ///
  PushNotificationResponse( {
    this.message,
    this.title

  });

  @override
  Map<String, dynamic> toJson() => _$PushNotificationResponseToJson(this);

  ///
  static PushNotificationResponse fromJson(Map<String, dynamic> json) =>
      _$PushNotificationResponseFromJson(json);
}