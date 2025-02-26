import 'package:flutter/material.dart';
import 'package:investmoney/route/route.dart';

void main() => runApp(const App());

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(initialRoute: '/', routes: AppRoutes.routes);
  }
}
