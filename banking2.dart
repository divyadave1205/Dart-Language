import 'dart:io';
import 'dart:math';

// import 'banking.dart';

List<Person> personList = [];
List history = [];

class Bank {
  String generateAccountNo() {
    Random q = Random();
    String accountNo = "";
    for (int i = 0; i <= 3; i++) {
      int random = q.nextInt(9999);
      accountNo = accountNo + random.toString();
    }
    return accountNo;
  }

  void banking2() {
    bool account = true;
    while (account) {
      print("welcome to our bank!!");
      print("1.open account");
      print("2.change pin");
      print("3.details");
      print("4.deposit");
      print("5.withdraw");
      print("6.mini statement");
      print("7.exit");
      print("enter your choice!!");
      int choice = int.parse(stdin.readLineSync()!);

      switch (choice) {
        case 1:
          String accountNo = generateAccountNo();
          bool account = true;
          while (account) {
            if (accountNo.length == 12) {
              accountNo = generateAccountNo();
              account = true;
            } else {
              if (personList.length >= 1) {
                for (Person element in personList) {
                  if (accountNo.toString() == element.accountNo.toString()) {
                    account = true;
                    break;
                  } else {
                    account = false;
                    break;
                  }
                }
              } else {
                account = false;
              }
            }
          }
          bool valid = true;
          while (valid) {
            try {
              print("enter your name");
              String name = stdin.readLineSync()!;
              print("enter your surname");
              String surname = stdin.readLineSync()!;
              print("enter your address");
              String address = stdin.readLineSync()!;
              print("enter your phoneNo");
              int phoneNo = int.parse(stdin.readLineSync()!);
              print("enter your 4 digit pin");

              int? pin;
              if (pin.toString().length == 4) {
                pin = int.parse(stdin.readLineSync()!);
              } else {
                print("****please try again!!!****");
              }
              personList.add(Person(
                name: name,
                surname: surname,
                address: address,
                accountNo: accountNo,
                phoneNo: phoneNo,
                pin: pin,
                balance: 0,
              ));
              print("\n\n\n");
              print("congrats!!! your account has been opened");
              print("\n\n\n");
              valid = false;
            } catch (e) {
              print(e);
              print("please try again");
              account = true;
            }
          }
          break;
        case 2:
          print("enter your accountNo/phoneNo.");
          int? num = int.parse(stdin.readLineSync()!);
          personList.forEach((Person element) {
            if (num.toString() == element.accountNo.toString() ||
                num.toString() == element.phoneNo.toString()) {
              personList.forEach((Person element) {
                print("enter your previous pin");
                int newPin = int.parse(stdin.readLineSync()!);
                if (element.pin.toString() == newPin.toString()) {
                  print("enter your new pin");
                  element.pin = int.parse(stdin.readLineSync()!);
                  print("your pin is changed");
                } else {
                  print("enter valid pin");
                }
              });
            } else {
              print("enter valid no.");
            }
          });
          break;
        case 3:
          print("enter your accountNo/phoneNo.");
          int num = int.parse(stdin.readLineSync()!);
          personList.forEach((Person element) {
            if (num.toString() == element.accountNo.toString() ||
                num.toString() == element.phoneNo.toString()) {
              personList.forEach((Person element) {
                print("enter your pin");
                int newPin = int.parse(stdin.readLineSync()!);
                if (element.pin.toString() == newPin.toString()) {
                  print("here are the information about your account");
                  print("your accountNo is" + element.accountNo!);
                  print("your name is" + element.name!);
                  print("your surname is" + element.surname!);
                  print("your phoneNo is" + element.phoneNo!.toString());
                  print("your address is" + element.address!);
                  print("your balance is" + element.balance.toString());
                } else {
                  print("enter valid pin");
                }
              });
            } else {
              print("enter valid no.");
            }
          });
          break;
        case 4:
          print("enter your accountNo/phoneNo.");
          int num = int.parse(stdin.readLineSync()!);
          personList.forEach((Person element) {
            if (num.toString() == element.accountNo.toString() ||
                num.toString() == element.phoneNo.toString()) {
              personList.forEach((Person element) {
                print("enter your pin");
                int newPin = int.parse(stdin.readLineSync()!);
                if (element.pin.toString() == newPin.toString()) {
                  print("enter amount for deposit");
                  int depositAmt = int.parse(stdin.readLineSync()!);
                  element.balance = element.balance! + depositAmt;
                  print(element.balance);
                  print("amount of $depositAmt is deposited into your account");
                  history.add(Deposit(
                    phoneNo: element.phoneNo,
                    accountNo: element.accountNo,
                    depositAmt: depositAmt,
                    date: DateTime.now(),
                    massage: "you deposited $depositAmt amount",
                  ));
                } else {
                  print("enter valid pin");
                }
              });
            } else {
              print("enter valid no.");
            }
          });
          break;
        case 5:
          print("enter your accountNo/phoneNo.");
          int num = int.parse(stdin.readLineSync()!);
          personList.forEach((Person element) {
            if (num.toString() == element.accountNo.toString() ||
                num.toString() == element.phoneNo.toString()) {
              personList.forEach((Person element) {
                print("enter your pin");
                int newPin = int.parse(stdin.readLineSync()!);
                if (element.pin.toString() == newPin.toString()) {
                  print("enter amount for Withdraw");
                  int withdrawAmt = int.parse(stdin.readLineSync()!);
                  if (element.balance! > withdrawAmt || element.balance != 0) {
                    element.balance = element.balance! - withdrawAmt;
                    print(element.balance.toString());
                  } else {
                    print("you dont have sufficient ballnce for withdraw");
                  }

                  history.add(Withdrawl(
                    phoneNo: element.phoneNo,
                    accountNo: element.accountNo,
                    withdrawlAmt: withdrawAmt,
                    date: DateTime.now(),
                    massage: "you withdrawed $withdrawAmt amount",
                  ));
                  print(
                      "amount of $withdrawAmt is withdrawed from your account");
                } else {
                  print("enter valid pin");
                }
              });
            } else {
              print("enter valid no.");
            }
          });
          break;
        case 6:
          print("enter your accountNo/phoneNo.");
          int num = int.parse(stdin.readLineSync()!);
          personList.forEach((Person element) {
            if (num.toString() == element.accountNo.toString() ||
                num.toString() == element.phoneNo.toString()) {
              personList.forEach((Person element) {
                print("enter your pin");
                int newPin = int.parse(stdin.readLineSync()!);
                if (element.pin == newPin) {
                  history.forEach((dynamic element) {
                    if (element.accountNo.toString() == num.toString() ||
                        element.phoneNo.toString() == num.toString()) {
                      if (element.runtimeType == Deposit) {
                        print("you deposited amount" +
                            element.depositAmt.toString());
                        print("date" + element.date.toString());
                      } else {
                        print("you withdrawed amount" +
                            element.withdrawlAmt.toString());
                        print("date" + element.date.toString());
                      }
                      print("reason:" + element.massage);
                      print("\n--------------------------------");
                    }
                  });
                } else {
                  print("enter valid pin");
                }
              });
            } else {
              print("enter valid no.");
            }
            print("total balance is" + element.balance.toString());
          });
          break;
        case 7:
          account = false;
          break;
      }
    }
  }

  Bank() {}
}

void banks() {
  Bank obj = Bank();
  obj.banking2();
}

class Person {
  String? accountNo;
  int? phoneNo;
  int? pin;
  String? name;
  String? address;
  String? surname;
  int? balance;

  Person({
    this.accountNo,
    this.phoneNo,
    this.pin,
    this.name,
    this.address,
    this.surname,
    this.balance,
  });
}

class Deposit {
  int? depositAmt;
  DateTime? date;
  String? accountNo;
  int? phoneNo;
  String? massage;
  Deposit({
    this.accountNo,
    this.date,
    this.depositAmt,
    this.massage,
    this.phoneNo,
  });
}

class Withdrawl {
  int? withdrawlAmt;
  DateTime? date;
  String? accountNo;
  int? phoneNo;
  String? massage;
  int? balance;
  Withdrawl({
    this.accountNo,
    this.date,
    this.withdrawlAmt,
    this.massage,
    this.phoneNo,
    this.balance,
  });
}
