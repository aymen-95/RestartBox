import 'package:flutter/material.dart';
import '../../core/widgets/section_title.dart';
import '../../core/widgets/custom_button.dart';
import '../../core/constants/app_texts.dart';
import '../projects/projects_page.dart';
import '../ideas/ideas_page.dart';
import '../inbox/inbox_page.dart';
import '../boundaries/boundaries_page.dart';
import '../self_reset/self_reset_page.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(AppTexts.dashboardTitle),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            const DrawerHeader(
              child: Text(AppTexts.appName, style: TextStyle(fontSize: 24)),
            ),
            ListTile(
              title: const Text('Dashboard'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Projects'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const ProjectsPage()),
                );
              },
            ),
            ListTile(
              title: const Text('Ideas'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const IdeasPage()),
                );
              },
            ),
            ListTile(
              title: const Text('Inbox'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const InboxPage()),
                );
              },
            ),
            ListTile(
              title: const Text('Boundaries'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const BoundariesPage()),
                );
              },
            ),
            ListTile(
              title: const Text('Self Reset'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const SelfResetPage()),
                );
              },
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SectionTitle(title: AppTexts.welcomeMessage),
            const SizedBox(height: 16),
            Wrap(
              spacing: 16,
              runSpacing: 16,
              children: const [
                _SummaryCard(title: 'Ideas', count: 0),
                _SummaryCard(title: 'Projects', count: 0),
                _SummaryCard(title: 'Inbox', count: 0),
                _SummaryCard(title: 'Boundaries', count: 0),
              ],
            ),
            const SizedBox(height: 32),
            CustomButton(
              text: AppTexts.mainTaskButton,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const ProjectsPage()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class _SummaryCard extends StatelessWidget {
  final String title;
  final int count;

  const _SummaryCard({Key? key, required this.title, required this.count}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: Container(
        width: 150,
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title, style: Theme.of(context).textTheme.titleMedium),
            const SizedBox(height: 8),
            Text('$count', style: Theme.of(context).textTheme.displaySmall),
          ],
        ),
      ),
    );
  }
}
