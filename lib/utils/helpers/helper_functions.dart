import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class KHelperFunctions {
  static Color? getColor(String value) {
    /// Define your product specific Colors here and it will match the attribute Colors and show specific

    if (value == "Orange") {
      return Colors.orange;
    } else if (value == "Orange") {
      return Colors.orange;
    } else if (value == "Green") {
      return Colors.green;
    } else if (value == "Red") {
      return Colors.red;
    } else if (value == "Blue") {
      return Colors.blue;
    } else if (value == "Grey") {
      return Colors.grey;
    } else if (value == "Pink") {
      return Colors.pink;
    } else if (value == "Purple") {
      return Colors.purple;
    } else if (value == "Black") {
      return Colors.black;
    } else if (value == "White") {
      return Colors.white;
    } 
    
  }
  
  static void showSnackBar(String message) {
    ScaffoldMessenger.of(Get.context!).showSnackBar(
      SnackBar(content: Text(message))
    );
  }
  
  static void showAlert(String title, String message) {
    showDialog(context: Get.context!,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text(title),
            content: Text(message),
            actions: [
              TextButton(onPressed: () => Navigator.of(context).pop(),
                  child: const Text('OK')
              )
            ],
          );
        }
    );
  }

  static void navigateToScreen(BuildContext context, Widget screen){
    Navigator.push(context,
        MaterialPageRoute(builder: (_) => screen)
    );
  }


  static String truncateText(String text, int maxLength) {
    if(text.length <= maxLength){
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

  static String getFormattedDate(DateTime date, {String format= 'dd MM yyyy'}) {
    return DateFormat(format).format(date);
  }


  static List<K> removeDuplicates<K>(List<K> list) {
    return list.toSet().toList();
  }

  static List<Widget> wrapWidgets(List<Widget> widgets, int rowSize) {
    final wrappedList = <Widget>[];
    for(var i =0; i<wrappedList.length; i += rowSize) {
      final rowChildren = widgets.sublist(i, i + rowSize > widgets.length ? widgets.length : i + rowSize);
      wrappedList.add(Row(children: rowChildren,));
    }
    return wrappedList;
  }






  
}

