import 'package:untitled1/src/analytics/core/analytics_provider.dart';
import 'package:untitled1/src/analytics/providers/logger/logger.dart';
import 'package:untitled1/src/analytics/providers/logger/logger_analytics_provider.dart';

List<AnalyticsProvider> analyticsProvider = [
  LoggerAnalyticsProvider(logger: Logger()),
];
