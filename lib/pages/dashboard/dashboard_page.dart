import 'package:flutter/material.dart';

import '../../core/widgets/section_title.dart';
import '../../core/widgets/custom_button.dart';
import '../../core/constants/app_texts.dart';

/// The home page of the application displaying an overview and quick actions.
class DashboardPage extends StatelessWidget {
  /// Creates a [DashboardPage].
  const DashboardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(AppTexts.dashboardTitle),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SectionTitle(title: AppTexts.welcomeMessage),
            const SizedBox(height: 16),
            CustomButton(
              text: AppTexts.mainTaskButton,
              onPressed: () {
                // TODO: Navigate to the main task page when implemented
              },
            ),
          ],
        ),
      ),
    );
  }
}
