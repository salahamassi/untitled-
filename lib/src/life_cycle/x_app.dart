import 'package:flutter/material.dart';
import 'package:untitled1/src/life_cycle/widget_life_cycle.dart';

class XApp extends StatefulWidget with WidgetsBindingObserver {
  XApp({Key? key, required this.child}) : super(key: key);

  final Widget child;

  @override
  State<XApp> createState() => _XAppState();

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    actions[state]?.call();
  }
}

class _XAppState extends State<XApp> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance?.addObserver(widget);
  }

  @override
  void dispose() {
    WidgetsBinding.instance?.removeObserver(widget);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => widget.child;
}
