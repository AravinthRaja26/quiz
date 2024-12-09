
import 'package:event_bus_plus/event_bus_plus.dart';

///
/// DashboardEvent class
///
class DashboardEvent extends AppEvent{


  ///
  final String sample;

  ///
  const DashboardEvent(this.sample);

  @override
  List<Object?> get props => <Object>[sample];
}