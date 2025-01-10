import 'package:intl/intl.dart';

String formatDate(String? dateStr) {
  if (dateStr == null || dateStr.isEmpty) {
    return '$dateStr';
  }

  if (dateStr == 'online') {
    return dateStr;
  }

  DateTime date = DateTime.parse(dateStr);
  DateTime now = DateTime.now();

  if (date.year == now.year && date.month == now.month && date.day == now.day) {
    return DateFormat.Hm().format(date);
  }

  if (date.year == now.year && date.isAfter(now.subtract(Duration(days: now.weekday))) && date.isBefore(now.add(Duration(days: 7 - now.weekday)))) {
    return DateFormat.E().format(date);
  }

  if (date.year == now.year) {
    return DateFormat.MMMMd().format(date);
  }

  return DateFormat.yMMMd().format(date);
}
