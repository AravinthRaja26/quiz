import 'package:nikitchem/data/models/language_model/language_list_model.dart';
import 'package:nikitchem/data/models/language_model/local_language.dart';
import 'package:nikitchem/data/network/dio_client.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';
part 'language_endpoint.g.dart';

///auto update end point class
@RestApi(parser: Parser.JsonSerializable)
@injectable
abstract class LanguageEndpoint {
  ///
  @factoryMethod
  factory LanguageEndpoint(CompanyDioClient dio) {
    return _LanguageEndpoint(dio);
  }

  ///
  @POST('language-string')
  Future<LanguageResponse> getLanguage(@Body() Map<String, dynamic> body);

  ///
  @POST('language')
  Future<LanguageListResponse> getLanguageList(
      @Body() Map<String, dynamic> body);
}
