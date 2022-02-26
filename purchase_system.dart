import 'dart:io';

import 'banking2.dart';
import 'grossery.dart';
import 'Tickets.dart';

class PurchaseSystem {
  void shopping() {
    void showOptions() {
      print("Make your choise !");
      print("1 : GO TO GROCERRY SHOP");
      print("2 : GO TO BANK");
      print("3 : GO TO METRO");
    }

    bool isValid = true;
    while (isValid) {
      showOptions();
      int choice = int.parse(stdin.readLineSync()!);
      switch (choice) {
        case 0:
          isValid = false;
          break;
        case 1:
          GrosseryShop().grosseryStore();
          break;
        case 2:
          Bank().banking2();
          break;
        case 3:
          Info().information();
      }
    }
  }
}
