/// A model class representing a file within the inbox or project.
class FileItem {
  final String id;
  final String path;
  final String note;

  FileItem({
    required this.id,
    required this.path,
    required this.note,
  });
}
