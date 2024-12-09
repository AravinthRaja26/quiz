import 'package:nikitchem/data/injection/injector.dart';
import 'package:nikitchem/data/models/notification/notification_model.dart';
import 'package:nikitchem/data/network/endpoint/notification/notification.endpoint.dart';
import 'package:nikitchem/data/storage/local_storage/local.storage.dart';
import 'package:nikitchem/presentation/ui/utils/storage.keys.dart';
import 'package:injectable/injectable.dart';

///
@injectable
class NotificationRepository {
  ///
  final NotificationEndpoint notificationEndpoint;

  ///
  LocalStorage localStorage = injector<LocalStorage>();

  ///
  NotificationRepository(this.notificationEndpoint);

  ///
  Future<NotificationResponse> getNotificationDetail() async {
    Map<String, dynamic> data = <String, dynamic>{
      'keykjm': localStorage.retrieveString(StorageKey.keykjm),
    };
    NotificationResponse response =
        await notificationEndpoint.getNotificationDetail(data);
    return response;
  }
}
