import 'package:flutter/material.dart';

final Map<AppLifecycleState, VoidCallback> actions = {};

extension LifeCycle on Widget {
  Widget resumed(VoidCallback action) {
    actions[AppLifecycleState.resumed] = action;
    return this;
  }

  Widget inactive(VoidCallback action) {
    actions[AppLifecycleState.inactive] = action;
    return this;
  }

  Widget paused(VoidCallback action) {
    actions[AppLifecycleState.paused] = action;
    return this;
  }

  Widget detached(VoidCallback action) {
    actions[AppLifecycleState.detached] = action;
    return this;
  }
}
