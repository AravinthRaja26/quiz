import 'package:event_bus_plus/event_bus_plus.dart';

///
class NetWorkOfflineEvent extends AppEvent {
  ///
  const NetWorkOfflineEvent();

  @override
  List<Object?> get props => <Object>[];
}

///
class NetWorkOnlineEvent extends AppEvent {
  ///
  const NetWorkOnlineEvent();
  @override
  List<Object?> get props => <Object>[];
}
