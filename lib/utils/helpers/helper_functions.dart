import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';


import '../constants/enum.dart';

class MHelperFunctions {
  static Color? getColor(String value) {
    if (value == 'Green') {
      return const Color(0xFF7AF97A);
    } else if (value == 'Red') {
      return Colors.red;
    } else if (value == 'Blue') {
      return const Color(0xFF1976D2);
    } else if (value == 'Pink') {
      return Colors.pink;
    } else if (value == 'Grey') {
      return Colors.grey;
    } else if (value == 'Purple') {
      return const Color(0xFFB17CB6);
    } else if (value == 'Black') {
      return Colors.black;
    } else if (value == 'White') {
      return Colors.white;
    } else if (value == 'Brown') {
      return Colors.brown;
    } else if (value == 'Teal') {
      return Colors.teal;
    } else if (value == 'Indigo') {
      return Colors.indigo;
    } else if (value == 'Yellow') {
      return Colors.yellow;
    } else if (value == 'Orange') {
      return const Color(0xFFFAB774);
    } else {
      return null;
    }
  }


  // static Color getStatusColor(ServiceHireStatus status) {
  //   switch (status) {
  //     case ServiceHireStatus.pending:
  //       return Colors.orange;
  //     case ServiceHireStatus.connected:
  //       return Colors.green;
  //     case ServiceHireStatus.cancelled:
  //       return Colors.red;
  //     case ServiceHireStatus.completed:
  //       return Colors.blue;
  //     // Fallback for undefined statuses
  //   }
  // }

  // static Color getTransactionStatusColor(TransactionStatus status) {
  //   switch (status) {
  //     case TransactionStatus.pending:
  //       return Colors.orange;
  //     case TransactionStatus.successful:
  //       return Colors.blue;
  //     case TransactionStatus.declined:
  //       return Colors.red;
  //
  //     // Fallback for undefined statuses
  //   }
  // }


  static void showSnackBar(String message) {
    ScaffoldMessenger.of(Get.context!)
        .showSnackBar(SnackBar(content: Text(message)));
  }



  static void showAlert(String title, String message) {
    showDialog(
      context: Get.context!,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(title),
          content: Text(message),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text('OK'),
            ),
          ],
        );
      },
    );
  }

  static void navigateToScreen(BuildContext context, Widget screen) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (_) => screen),
    );
  }

  static String truncateText(String text, int maxLength) {
    if (text.length <= maxLength) {
      return text;
    } else {
      return '${text.substring(0, maxLength)}...';
    }
  }

  static bool isDarkMode(BuildContext context) {
    return Theme.of(context).brightness == Brightness.dark;
  }

  static Size screenSize() {
    return MediaQuery.of(Get.context!).size;
  }

  static double screenHeight() {
    return MediaQuery.of(Get.context!).size.height;
  }

  static double screenWidth() {
    return MediaQuery.of(Get.context!).size.width;
  }

  static String getFormattedDate(DateTime date,
      {String format = 'dd MMM yyyy'}) {
    return DateFormat(format).format(date);
  }

  static List<T> removeDuplicates<T>(List<T> list) {
    return list.toSet().toList();
  }

  static List<Widget> wrapWidgets(List<Widget> widgets, int rowSize) {
    final wrappedList = <Widget>[];
    for (var i = 0; i < widgets.length; i += rowSize) {
      final rowChildren = widgets.sublist(
          i, i + rowSize > widgets.length ? widgets.length : i + rowSize);
      wrappedList.add(Row(children: rowChildren));
    }
    return wrappedList;
  }
}
