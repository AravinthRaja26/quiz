// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'banner_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BannerResponse _$BannerResponseFromJson(Map<String, dynamic> json) =>
    BannerResponse(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => BannerData.fromJson(e as Map<String, dynamic>))
          .toList(),
      notifyCnt: (json['notifyCnt'] as num?)?.toInt(),
    );

Map<String, dynamic> _$BannerResponseToJson(BannerResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
      'notifyCnt': instance.notifyCnt,
    };

BannerData _$BannerDataFromJson(Map<String, dynamic> json) => BannerData(
      id: (json['id'] as num?)?.toInt(),
      bannerName: json['banner_name'] as String?,
      bannerLink: json['banner_link'] as String?,
      bannerImage: json['banner_image'] as String?,
      sortOrder: (json['sort_order'] as num?)?.toInt(),
    );

Map<String, dynamic> _$BannerDataToJson(BannerData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'banner_name': instance.bannerName,
      'banner_link': instance.bannerLink,
      'banner_image': instance.bannerImage,
      'sort_order': instance.sortOrder,
    };
