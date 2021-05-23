import 'package:flutter/material.dart';
import 'package:test_app/presentation/home/home.dart';
import 'package:test_app/presentation/sidebar/sidebar.dart';

class DesktopView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // drawer: Sidebar(),
      body: SafeArea(
        child: Row(
          children: [
            Expanded(flex: 1, child: Sidebar()),
            Expanded(flex: 5, child: Home())
          ],
        ),
      ),
    );
  }
}
