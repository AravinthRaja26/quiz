import 'package:nikitchem/application/events/network_event.dart';
import 'package:nikitchem/data/mixin/event_mixin.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:event_bus_plus/event_bus_plus.dart';

///
class NetworkConnectivity with EventMixin<AppEvent> {
  ///
  void connectivityCheck() async {
    List<ConnectivityResult> connectivityResult =
        await (Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.none) {
      // Navigator.of(context).pop();
      // exit(0);
    } else {}

    Connectivity()
        .onConnectivityChanged
        .listen((List<ConnectivityResult> result) async {
      if (result .contains(ConnectivityResult.none)) {
        fireEvent(const NetWorkOfflineEvent());
      } else {
        fireEvent(const NetWorkOnlineEvent());
      }
    });
  }
}
