import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_app/presentation/contact/contact.dart';
import 'package:test_app/presentation/education/education.dart';
import 'package:test_app/presentation/experience/experience.dart';
import 'package:test_app/presentation/sidebar/sidebar.dart';

import '../state_management/content_cubit/content_cubit.dart';
import 'about/about.dart';

class DesktopView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // drawer: Sidebar(),
      body: SafeArea(
        child: Row(
          children: [
            Expanded(flex: 1, child: Sidebar()),
            Expanded(
                flex: 5,
                child: BlocBuilder<ContentCubit, ContentState>(
                  builder: (context, state) {
                    switch (state.type) {
                      case ContentType.about:
                        return About();
                      case ContentType.experience:
                        return Experience();
                      case ContentType.education:
                        return Education();
                      case ContentType.contact:
                        return Contact();
                    }
                  },
                ))
          ],
        ),
      ),
    );
  }
}
