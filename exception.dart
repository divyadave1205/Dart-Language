import 'dart:io';

void exceptionExample() {
  // try {
  //   List a = [1, 2, 3];
  //   // int i = 10 ~/ 0;
  //   print(a[6]);
  //   //asdasd
  //   //asdasd
  //   ///aasdasd
  // } catch (e) {
  //   print("you are using wrond index not in list");
  // }
  // bool hasException = true;
  // while (hasException) {
  //   try {
  //     print("Enter divide number");
  //     String a = stdin.readLineSync()!;
  //     print(a);
  //     if (a == "_") {
  //       throw "you can not use _";
  //     }
  //     hasException = false;
  //   } catch (e) {
  //     print("enter valid number");
  //     print(e);
  //     hasException = true;
  //   } finally {
  //     print('this is the compolsury block');
  //   }
  // }
  // bool validNumber = true;
  // while (validNumber) {
  //   try {
  //     print("add number for multiplication");
  //     int a = int.parse(stdin.readLineSync()!);
  //     int b = 10 * a;
  //     print(b);
  //     if (a == 4 || a == 7) {
  //       throw "invalid number";
  //     }
  //     validNumber = false;
  //   } catch (e) {
  //     print("invalid");
  //     print(e);
  //     validNumber = true;
  //   } finally {
  //     print("process over");
  //   }
  // }
  // bool addition = true;
  // int n = 1;

  // for (int i = 1; i <= n; i++) {
  //   try {
  //     print('enter number for addition');
  //     int n = int.parse(stdin.readLineSync()!);
  //     if (n == 2 || n == 4) {
  //       throw "invalid number";
  //     }
  //     int b = i + n;
  //     print(b);
  //     addition = false;
  //   } catch (e) {
  //     print(e);
  //     print("please enter valid number");
  //     addition = true;
  //   } finally {
  //     print("addition completed");
  //   }
  // }
  bool substriction = true;
  do {
    try {
      print("enter number1 for substriction");
      int a = int.parse(stdin.readLineSync()!);
      print("enter number2 for substriction");
      int b = int.parse(stdin.readLineSync()!);
      if (b > a) {
        throw "invalid";
      }
      int c = a - b;
      print(c);
      substriction = false;
    } catch (e) {
      print(e);
      print("enter valid number");
      substriction = true;
    } finally {
      print("substriction completed");
    }
  } while (substriction);
}
