/// A model class representing a project in the application.
class Project {
  final String id;
  final String name;
  final String description;
  final double progress;

  Project({
    required this.id,
    required this.name,
    required this.description,
    required this.progress,
  });
}
