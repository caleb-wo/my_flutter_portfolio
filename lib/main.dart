import 'package:flutter/material.dart';
import 'package:my_portfolio_app/mobile/landing_page_mobile.dart';
import 'package:my_portfolio_app/routes.dart';
import 'package:my_portfolio_app/web/landing_page_web.dart';
import 'package:flutter_web_plugins/url_strategy.dart';

void main() {
  usePathUrlStrategy();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Caleb Wolfe',
      onGenerateRoute: (settings) => Routes.generateRoute(settings),
      initialRoute: '/',
    );
  }
}
