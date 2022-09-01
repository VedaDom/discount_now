import 'package:intl/intl.dart';

extension DateTimeX on DateTime {
  String get formatDateTime {
    var timeAgo = DateTime.now().difference(this);
    if (year < DateTime.now().year) {
      var formatter = DateFormat.yMMMMd('en_US').add_jm();
      String formatted = formatter.format(this);
      return formatted;
    } else if (timeAgo.inMinutes < 1) {
      return "Now";
    } else if (timeAgo.inMinutes > 0 && timeAgo.inMinutes < 59) {
      return "${timeAgo.inMinutes} mins ago";
    } else if (timeAgo.inHours > 0 && timeAgo.inHours < 24) {
      return "${timeAgo.inHours} hrs ago";
    } else if (timeAgo.inDays == 1) {
      return "Yesterday";
    } else {
      var formatter = DateFormat('EEE, MMM d');
      String formatted = formatter.format(this);
      return formatted;
    }
  }
}
