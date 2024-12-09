import 'dart:io';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:nikitchem/application/config/application.dart';
import 'package:nikitchem/data/models/login/otp_response.dart';
import 'package:nikitchem/data/models/login/otp_verification_response.dart';
import 'package:nikitchem/data/models/login/rest_m_pin_response.dart';
import 'package:nikitchem/data/network/endpoint/login/login.endpoint.dart';
import 'package:injectable/injectable.dart';

///
@injectable
class LoginRepository {
  ///
  final AuthEndpoint loginEndpoint;

  ///
  const LoginRepository(this.loginEndpoint);


  ///
  Future<OtpResponse>  getOtp({required String? phoneNumber,String? countryCode})async{
    Map<String,dynamic> data = <String,dynamic>{
      'cck123': appConfig!.companyId,
      'mck123': phoneNumber,
      'lck123': 1,
      'countryCode': countryCode,
    };
    OtpResponse response = await loginEndpoint.getOtp(data);
    return response;
  }

  ///
  Future<OtpVerificationResponse>  verifyOtp(String? otp, {String? phoneNumber,String? countryCode})async{

    DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
    IosDeviceInfo? iosDeviceInfo;
    AndroidDeviceInfo? androidDeviceInfo;
    if (Platform.isAndroid) {
      androidDeviceInfo = await deviceInfo.androidInfo;
    } else {
      iosDeviceInfo = await deviceInfo.iosInfo;
    }

    Map<String,dynamic> data = <String,dynamic>{
      'cck123': appConfig!.companyId,
      'mck123': phoneNumber,
      'ock123': otp,
      'countryCode': countryCode,
      'dvIdck123': Platform.isAndroid
          ? androidDeviceInfo?.brand ?? ''
          : iosDeviceInfo?.name ?? '',
    };
    OtpVerificationResponse response = await loginEndpoint.verifyOtp(data);
    return response;
  }

  ///
  Future<RestMPinResponse>  resetMPin(
      {String? phoneNumber, String? countryCode})async{


    Map<String,dynamic> data = <String,dynamic>{
      'companyId': appConfig!.companyId,
      'countryCode': countryCode??'',
      'mobileNumber': phoneNumber??'',
    };
    RestMPinResponse response = await loginEndpoint.resetMPin(data);
    return response;
  }
}
