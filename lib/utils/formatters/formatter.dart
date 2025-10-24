
import 'package:intl/intl.dart';


// Date Format
class MFormatter {
  static String formatDate(DateTime? date) {
    date ??= DateTime.now();
    final onlyDate = DateFormat('dd/MM/yyyy').format(date);
    final onlyTime = DateFormat('hh:mm').format(date);
    return '$onlyDate at $onlyTime';
  }

  // Currency Format
  static String formatCurrency(double amount) {
    return NumberFormat.currency(locale: 'en_NG', symbol: '₦').format(amount);
  }

  // Phone Number Format
  static String formatPhoneNumber(String phoneNumber){
    if (phoneNumber.length == 11) {
      return '(${phoneNumber.substring(0, 4)}) ${phoneNumber.substring(4, 7)} ${phoneNumber.substring(7)}';
    }
    return phoneNumber;
  }


}