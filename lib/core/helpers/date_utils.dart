/// Helper methods for formatting and manipulating dates.
class DateUtilsHelper {
  /// Formats a [DateTime] as a human-readable string in DD/MM/YYYY format.
  static String formatDate(DateTime date) {
    return '${date.day}/${date.month}/${date.year}';
  }
}
