import 'package:nikitchem/data/mixin/serializable.mixin.dart';
import 'package:json_annotation/json_annotation.dart';

part 'banner_response.g.dart';

///
@JsonSerializable()
class BannerResponse with SerializableMixin {
  ///
  List<BannerData>? data;

  ///
  int? notifyCnt;

  ///
  BannerResponse({this.data, this.notifyCnt});
  @override
  Map<String, dynamic> toJson() => _$BannerResponseToJson(this);

  ///
  static BannerResponse fromJson(Map<String, dynamic> json) =>
      _$BannerResponseFromJson(json);
}

///
@JsonSerializable(fieldRename: FieldRename.snake)
class BannerData with SerializableMixin {
  ///
  int? id;

  ///
  String? bannerName;

  ///
  String? bannerLink;

  ///
  String? bannerImage;

  ///
  int? sortOrder;

  ///
  BannerData(
      {this.id,
      this.bannerName,
      this.bannerLink,
      this.bannerImage,
      this.sortOrder});
  @override
  Map<String, dynamic> toJson() => _$BannerDataToJson(this);

  ///
  static BannerData fromJson(Map<String, dynamic> json) =>
      _$BannerDataFromJson(json);
}
