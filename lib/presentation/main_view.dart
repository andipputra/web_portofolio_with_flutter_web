import 'package:flutter/material.dart';
import 'package:test_app/presentation/desktop_view.dart';

class MainView extends StatelessWidget {
  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < 850;

  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width < 1100 &&
      MediaQuery.of(context).size.width >= 850;

  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 1100;

  @override
  Widget build(BuildContext context) {
    if (isDesktop(context)) {
      return DesktopView();
    } else if (isTablet(context)) {
      return Container(
        child: Text('is tablet'),
      );
    } else {
      return Container(
        child: Text('is mobile'),
      );
    }
  }
}
