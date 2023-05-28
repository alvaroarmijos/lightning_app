import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class LampPage extends StatelessWidget {
  const LampPage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Scaffold(
      backgroundColor: colorScheme.primary,
      body: const Column(
        children: [
          LampWidget(),
          ScheduleWidget(),
        ],
      ),
    );
  }
}
