import 'dart:convert';

///
mixin SerializableMixin {
  ///
  Map<String, dynamic> toJson();

  ///
  String serialize() {
    return jsonEncode(toJson());
  }
}
