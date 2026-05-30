import 'package:flutter/material.dart';
import 'package:my_portfolio_app/mobile/landing_page_mobile.dart';
import 'package:my_portfolio_app/web/landing_page_web.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Caleb Wolfe',
      home: LayoutBuilder(
        builder: (context, constraints) => switch (constraints.maxWidth > 767){
          true => LandingPageWeb(),
          false => LandingPageMobile(),
        }
      ),
    );
  }
}
