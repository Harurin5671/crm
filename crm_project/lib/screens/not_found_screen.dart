import 'package:flutter/material.dart';

import 'package:crm_project/widgets/widgets.dart';

class NotFoundScreen extends StatelessWidget {
  const NotFoundScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const LayoutScreen(
      child: Center(
        child: Text('404'),
      ),
    );
  }
}