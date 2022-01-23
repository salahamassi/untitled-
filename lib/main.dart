import 'package:flutter/material.dart';
import 'package:untitled1/example/app/analytics_provider.dart';

import 'example/ui/my_app.dart';
import 'src/analytics/app_analytics.dart';

void main() {
  //initializeReflectable();
  AppAnalytics(providers: analyticsProvider);
  runApp(const MyApp());
}
