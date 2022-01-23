import '../../core/analytics_event.dart';
import '../../core/analytics_provider.dart';
import 'logger.dart';

class LoggerAnalyticsProvider extends AnalyticsProvider {
  final Logger logger;

  LoggerAnalyticsProvider({required this.logger});

  @override
  void log(AnalyticsEvent event) {
    logger.log('${event.key} ${event.params.toString()}');
  }
}
