import 'package:intl/intl.dart';

extension DoubleX on double {
  String get formatMoney {
    final numberFormat = NumberFormat("#,##0.00", "en_US");
    return numberFormat
        .format(this)
        .replaceAll(RegExp(r"([.]*0+)(?!.*\d)"), "");
  }
}
