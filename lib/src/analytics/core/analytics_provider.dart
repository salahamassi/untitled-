import 'analytics_event.dart';

abstract class AnalyticsProvider {
  void log(AnalyticsEvent event);
}
