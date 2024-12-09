import 'package:nikitchem/data/models/contact_us/contactUsRequstBody.dart';
import 'package:nikitchem/data/models/contact_us/contact_us_response.dart';
import 'package:nikitchem/data/network/endpoint/contact_us/contact_us_endpoint.dart';
import 'package:injectable/injectable.dart';

///
@injectable
class ContactUsRepository {
  ///
  final ContactUsEndPoint contactUsEndPoint;

  ///
  const ContactUsRepository(this.contactUsEndPoint);

  ///
  Future<ContactUsResponse> sendContactUsEmail(
      {required ContactUsRequestBody contactUsRequestBody}) async {
    ContactUsResponse response = await contactUsEndPoint
        .sendContactUsEmail(contactUsRequestBody.toJson());
    return response;
  }
}
