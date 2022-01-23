import 'package:untitled1/src/analytics/core/analytics_event.dart';

class ButtonTappedEvent extends AnalyticsEvent {
  @override
  String get key => 'floating_button_tapped';

  @override
  Map<String, dynamic> get params => {'name': 'salah'};
}
