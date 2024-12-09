import 'dart:convert';
import 'dart:io';
import 'package:dio/dio.dart';
import 'package:nikitchem/application/config/application.dart';
import 'package:nikitchem/data/injection/injector.dart';
import 'package:nikitchem/data/models/user_profile/city_response.dart';
import 'package:nikitchem/data/models/user_profile/delete_image_response.dart';
import 'package:nikitchem/data/models/user_profile/get_consumer_by_id.dart';
import 'package:nikitchem/data/models/user_profile/state_response.dart';
import 'package:nikitchem/data/models/user_profile/user_profile.dart';
import 'package:nikitchem/data/models/user_profile/version_validate.dart';
import 'package:nikitchem/data/network/endpoint/user_profile/user_profile.dart';
import 'package:nikitchem/data/storage/local_storage/local.storage.dart';
import 'package:nikitchem/presentation/ui/utils/storage.keys.dart';
import 'package:injectable/injectable.dart';

///
@injectable
class UserProfileRepository {
  ///
  UserProfileEndPoint userProfileEndPoint;

  ///
  LocalStorage localStorage = injector<LocalStorage>();

  ///
  UserProfileRepository(this.userProfileEndPoint);

  ///
  Future<UserProfileResponse> saveConsumerDetail(
      {required String? userName, String? email}) async {
    Map<String, dynamic> data = <String, dynamic>{
      'keykjm': localStorage.retrieveString(StorageKey.keykjm),
      'email': email ?? '',
      'firstName': userName,
      'isEmail': email?.isNotEmpty == true
    };
    UserProfileResponse response = await userProfileEndPoint.saveConsumer(data);
    return response;
  }

  ///
  Future<UserProfileResponse> updateProfile(
      {required Map<String, dynamic> body,
      required List<MultipartFile> file}) async {
    UserProfileResponse response = await userProfileEndPoint.updateProfile(
        'multipart/form-data; boundary=<calculated when request is sent>',
        FormData.fromMap(<String, dynamic>{
          'data': MultipartFile.fromString(jsonEncode(body)),
          'file': file
        }));
    return response;
  }

  ///
  Future<ConsumerByIdResponse> getConsumerByIdNew() async {
    Map<String, dynamic> data = <String, dynamic>{
      'keykjm': localStorage.retrieveString(StorageKey.keykjm)
    };
    ConsumerByIdResponse response =
        await userProfileEndPoint.getConsumerByIdNew(data);
    return response;
  }

  ///
  Future<VersionValidateResponse> versionValidation() async {
    Map<String, dynamic> data = <String, dynamic>{
      'keykjm': localStorage.retrieveString(StorageKey.keykjm),
      'version': '4.0.0',
      'deviceOs': Platform.operatingSystem,
    };
    VersionValidateResponse response =
        await userProfileEndPoint.versionValidation(data);
    return response;
  }

  ///
  Future<UserProfileResponse> deleteAccount() async {
    Map<String, dynamic> data = <String, dynamic>{
      'keykjm': localStorage.retrieveString(StorageKey.keykjm),
    };
    UserProfileResponse response =
        await userProfileEndPoint.deleteAccount(data);
    return response;
  }

  ///
  Future<UserProfileResponse> reActiveConsumer(String phoneNumber) async {
    Map<String, dynamic> data = <String, dynamic>{
      'companyId': appConfig!.companyId,
      'mobile':
          phoneNumber ?? localStorage.retrieveString(StorageKey.userPhoneNumber)
    };
    UserProfileResponse response =
        await userProfileEndPoint.reactiveConsumer(data);
    return response;
  }

  ///
  Future<StateResponse> getState() async {
    Map<String, dynamic> data = <String, dynamic>{
      'countryCode': 96,
    };
    StateResponse response = await userProfileEndPoint.getState(data);
    return response;
  }

  ///
  Future<CityResponse> getCity({required int stateCode}) async {
    Map<String, dynamic> data = <String, dynamic>{
      'stateCode': stateCode,
    };
    CityResponse response = await userProfileEndPoint.getCity(data);
    return response;
  }

  ///
  Future<DeleteImageResponse> deleteKycImage({required int documentId}) async {
    Map<String, dynamic> data = <String, dynamic>{
      'documentId': documentId,
      'keykjm': localStorage.retrieveString(StorageKey.keykjm),
    };
    DeleteImageResponse response = await userProfileEndPoint.deleteImage(data);
    return response;
  }
}
