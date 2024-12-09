

import 'package:image_picker/image_picker.dart';
import 'package:json_annotation/json_annotation.dart';
part 'profile_update_body.g.dart';
///
@JsonSerializable()
class ProfileUpdateBody {
  ///
  String? email;
  ///
  String? firstName;
  ///
  String? city;
  ///
  String? address1;
  ///
  String? address2;
  ///
  String? area;
  ///
  String? pincode;
  ///
  String? pan;
  ///
  int? countryCode;
  ///
  int? state;
  ///
  String? keykjm;
  ///
  List<dynamic>? documents;

  ///
  ProfileUpdateBody({
    this.email,
    this.firstName,
    this.city,
    this.address1,
    this.address2,
    this.area,
    this.pincode,
    this.pan,
    this.countryCode,
    this.state,
    this.keykjm,
    this.documents,
  });

  ///
  @override
  Map<String, dynamic> toJson() => _$ProfileUpdateBodyToJson(this);

  ///
  static ProfileUpdateBody fromJson(Map<String, dynamic> json) =>
      _$ProfileUpdateBodyFromJson(json);

}
