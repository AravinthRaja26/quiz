import 'package:nikitchem/data/models/support/support_model.dart';
import 'package:nikitchem/data/network/dio_client.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

part 'support.endpoint.g.dart';

///Support end point class
@RestApi()
@injectable
abstract class SupportEndpoint {
  ///
  @factoryMethod
  factory SupportEndpoint(DioClient dio) {
    return _SupportEndpoint(dio);
  }

  ///
  @GET('faq/faqList/0')
  Future<ConsumerDetails> consumerDetail();

  ///
  @GET('faq/faqList/{id}')
  Future<ConsumerDetails> viewMoreConsumerDetail(@Path('id')String qid);
}
