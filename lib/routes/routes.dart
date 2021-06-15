import 'package:flutter/material.dart';
import 'package:Portfolio/pages/Layout/header.dart';

Map<String, WidgetBuilder> getApplicationRoutes() {
  return <String, WidgetBuilder>{
    '/': (BuildContext context) => Header(),
    // 'Portfolio': (BuildContext context) => Portfolio(),
    // 'Contact': (BuildContext context) => Contact(),
  };
}
