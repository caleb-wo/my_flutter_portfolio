import 'package:flutter/material.dart';
import 'package:my_portfolio_app/mobile/landing_page_mobile.dart';
import 'package:my_portfolio_app/web/landing_page_web.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => LayoutBuilder(
            builder: ((context, constraints) => (constraints.maxWidth > 767)
                ? LandingPageWeb()
                : LandingPageMobile()),
          ),
        );
      default:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => LayoutBuilder(
            builder: ((context, constraints) => (constraints.maxWidth > 767)
                ? LandingPageWeb()
                : LandingPageMobile()),
          ),
        );
    }
  }
}
