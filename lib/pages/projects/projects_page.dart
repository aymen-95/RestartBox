import 'package:flutter/material.dart';
import '../../models/project_model.dart';
import '../../core/widgets/item_card.dart';

class ProjectsPage extends StatefulWidget {
  const ProjectsPage({Key? key}) : super(key: key);

  @override
  State<ProjectsPage> createState() => _ProjectsPageState();
}

class _ProjectsPageState extends State<ProjectsPage> {
  final List<Project> _projects = [
    Project(
      id: '1',
      name: 'Project A',
      description: 'Description of Project A',
      progress: 0.5,
    ),
    Project(
      id: '2',
      name: 'Project B',
      description: 'Description of Project B',
      progress: 0.8,
    ),
    Project(
      id: '3',
      name: 'Project C',
      description: 'Description of Project C',
      progress: 0.2,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Projects'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: _projects.length,
          itemBuilder: (context, index) {
            final project = _projects[index];
            return Padding(
              padding: const EdgeInsets.only(bottom: 12.0),
              child: ItemCard(
                title: project.name,
                subtitle:
                    '${project.description}\nProgress: ${(project.progress * 100).toStringAsFixed(0)}%',
                onTap: () {
                  // TODO: handle project tap
                },
              ),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // TODO: add new project
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
