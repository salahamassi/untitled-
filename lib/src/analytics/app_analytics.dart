import 'dart:async';

import 'package:untitled1/src/analytics/core/analytics_provider.dart';

import 'core/analytics_event.dart';

class AppAnalytics {
  final List<AnalyticsProvider> providers;

  StreamSubscription? _streamSubscription;

  AppAnalytics({required this.providers}) {
    _streamSubscription = _streamController.stream.listen((event) {
      for (var provider in providers) {
        provider.log(event);
      }
    });
  }

  void dispose() {
    _streamSubscription?.cancel();
  }
}

final StreamController<AnalyticsEvent> _streamController = StreamController();

void fire(AnalyticsEvent analyticsEvent) {
  _streamController.add(analyticsEvent);
}
