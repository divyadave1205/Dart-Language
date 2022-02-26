/// Banking System
/// ++1. Open Account
///   - acount no
///   - name
///   - surname
///   - phone
///   - address
///   - Set pin
///
///++ 2. Change PIN
///   - phnoe / ac no
///   - pin
///
/// 3. Mini Statment
///   - phone / ac no
///   - pin
///
/// 4. Withdrow
///   - ac no
///   - pin
///     - amount
///
/// 5. DIposit
///   - ac no
///   - pin
///     - amount
///
/// ++6. Details
///   - phone / ac no
///   - pin
///
import 'dart:io';

import 'dart:math';

List<Person> personList = [];
List history = [];

class Bank {
  String generateAccountNumber() {
    Random r = Random();
    String accountNumber = "";
    for (int i = 0; i < 3; i++) {
      int randomNumber = r.nextInt(9999);
      accountNumber = accountNumber + randomNumber.toString();
    }
    return accountNumber;
  }

  void banking() {
    bool validInfo = true;
    while (validInfo) {
      print("welcome to our bank");
      print("1.open account");
      print("2.change pin");
      print("3.details");
      print("4.deposit");
      print("5.withdrawl");
      print("6.mini statement");
      print("7.exit");
      print("enter your choice");
      int choice = int.parse(stdin.readLineSync()!);

      switch (choice) {
        case 1:
          String accountNumber = generateAccountNumber();
          bool isValid = false;
          while (!isValid) {
            if (accountNumber.length != 11) {
              accountNumber = generateAccountNumber();
              isValid = false;
            } else {
              if (personList.length >= 1) {
                for (Person element in personList) {
                  if (accountNumber.toString() ==
                      element.accountNo.toString()) {
                    isValid = false;
                    break;
                  } else {
                    isValid = true;
                    break;
                  }
                }
              } else {
                isValid = true;
              }
            }
          }

          bool isSuccess = false;
          while (!isSuccess) {
            try {
              print("enter your name = ");
              String name = stdin.readLineSync()!;
              print("enter your surname");
              String surname = stdin.readLineSync()!;
              print("enter your phone no.");
              int phoneNo = int.parse(stdin.readLineSync()!);
              print("enter your address");
              String address = stdin.readLineSync()!;
              print("set four character pin for your account");
              int? pin;
              if (pin.toString().length == 4) {
                pin = int.parse(stdin.readLineSync()!);
              } else {
                print("enter valid pin");
              }
              personList.add(Person(
                accountNo: accountNumber,
                name: name,
                surname: surname,
                phoneNo: phoneNo,
                address: address,
                pin: pin,
                balance: 0,
              ));

              print("\n\n\n");
              print("CONGRATS! \nYour account has been opened!");
              print("\n\n\n");
              isSuccess = true;
            } catch (e) {
              print(e);
              print("Please try again !");
              isSuccess = false;
            }
          }

          break;

        case 2:
          print("enter your phone no./account no.");
          int? No = int.parse(stdin.readLineSync()!);

          personList.forEach((Person element) {
            if (No.toString() == element.accountNo.toString() ||
                No.toString() == element.phoneNo.toString()) {
              personList.forEach((Person element) {
                print("enter your previouse pin");
                int newPin = int.parse(stdin.readLineSync()!);
                if (element.pin.toString() == newPin.toString()) {
                  print("enter new pin");
                  element.pin = int.parse(stdin.readLineSync()!);
                  print("your pin is changed");
                } else {
                  print("enter valid pin");
                }
              });
            } else {
              print("enter valid no");
            }
          });

          break;

        case 3:
          print('enter your phone no./account no.');
          int? No = int.parse(stdin.readLineSync()!);

          personList.forEach((Person element) {
            if (No.toString() == element.accountNo.toString() ||
                No.toString() == element.phoneNo.toString()) {
              personList.forEach((Person element) {
                print("enter your pin");
                int newPin = int.parse(stdin.readLineSync()!);
                if (element.pin.toString() == newPin.toString()) {
                  print("your account no is " + element.accountNo!);
                  print("name:" + element.name!);
                  print("surname: " + element.surname!);
                  print("phone no: " + element.phoneNo!.toString());
                  print("address: " + element.address!);
                  print("your balance is " + element.balance.toString());
                } else {
                  print("enter valid pin");
                }
              });
            } else {
              print("enter valid no");
            }
          });

          break;

        case 4:
          print("enter your phone no./account no.");
          int? No = int.parse(stdin.readLineSync()!);

          personList.forEach((Person element) {
            if (No.toString() == element.accountNo.toString() ||
                No.toString() == element.phoneNo.toString()) {
              personList.forEach((Person element) {
                print("enter your pin");
                int newPin = int.parse(stdin.readLineSync()!);
                if (element.pin.toString() == newPin.toString()) {
                  print("enter amount for deposit");

                  int deposit = int.parse(stdin.readLineSync()!);
                  element.balance = element.balance! + deposit;
                  print(element.balance);
                  print("amount of $deposit deposited in your account");
                  history.add(Deposit(
                    phoneNo: element.phoneNo,
                    accountno: element.accountNo,
                    deposit: deposit,
                    date: DateTime.now(),
                    message: "You deposite $deposit amount!",
                  ));
                } else {
                  print("enter valid pin");
                }
              });
            } else {
              print("enter valid no");
            }
          });

          break;

        case 5:
          print("enter your phone no./account no.");
          int? No = int.parse(stdin.readLineSync()!);

          personList.forEach((Person element) {
            if (No.toString() == element.accountNo.toString() ||
                No.toString() == element.phoneNo.toString()) {
              personList.forEach((Person element) {
                print("enter your pin");
                int newPin = int.parse(stdin.readLineSync()!);
                if (element.pin.toString() == newPin.toString()) {
                  print("enter amount for withdrawl");

                  int withdrawl = int.parse(stdin.readLineSync()!);
                  if (element.balance! > withdrawl || element.balance != 0) {
                    element.balance = element.balance! - withdrawl;
                    print(element.balance.toString());
                  } else {
                    print("you dont have sufficient balance for withdraw");
                  }

                  history.add(Withdraw(
                      phoneNo: element.phoneNo,
                      accountno: element.accountNo,
                      withdrawl: withdrawl,
                      date: DateTime.now(),
                      message: "You widthrow $withdrawl amount!"));
                  print("amount of $withdrawl withdrawed from your account");
                } else {
                  print("enter valid pin");
                }
              });
            } else {
              print("enter valid no");
            }
          });

          break;

        case 6:
          print("enter your phone no./account no.");
          int? No = int.parse(stdin.readLineSync()!);

          personList.forEach((Person element) {
            if (No.toString() == element.accountNo.toString() ||
                No.toString() == element.phoneNo.toString()) {
              personList.forEach((Person element) {
                print("enter your  pin");
                int newPin = int.parse(stdin.readLineSync()!);
                if (element.pin == newPin) {
                  history.forEach((dynamic element) {
                    if (element.accountno.toString() == No.toString() ||
                        element.phoneNo.toString() == No.toString()) {
                      if (element.runtimeType == Deposit) {
                        print("you deposited amount " +
                            element.deposit.toString());
                        print("date" + element.date.toString());
                      } else {
                        print("you withdrawed amount " +
                            element.withdrawl.toString());
                        print("date" + element.date.toString());
                      }
                      print("Reasone : " + element.message);
                      print("\n\n----------------------------");
                    }
                  });
                  print("total balance is " + element.balance.toString());
                } else {
                  print("enter valid pin");
                }
              });
            } else {
              print("enter valid no");
            }
          });
          break;

        case 7:
          validInfo = false;
          break;
        default:
      }
    }
  }

  Bank() {}
}

void func() {
  Bank obj = Bank();
  obj.banking();
}

class Person {
  String? accountNo;
  String? name;
  String? surname;
  int? phoneNo;
  String? address;
  int? pin;
  int? balance;
  String? totalBalance;

  Person({
    this.accountNo,
    this.name,
    this.surname,
    this.phoneNo,
    this.address,
    this.pin,
    this.balance,
    this.totalBalance,
  });
}

class Deposit {
  int? deposit;
  DateTime? date;
  String? accountno;
  int? phoneNo;
  String? message;
  Deposit({
    this.message,
    this.deposit,
    this.date,
    this.accountno,
    this.phoneNo,
  });
}

class Withdraw {
  int? withdrawl;
  DateTime? date;
  String? accountno;
  int? phoneNo;
  String? message;
  Withdraw({
    this.withdrawl,
    this.date,
    this.accountno,
    this.phoneNo,
    this.message,
  });
}
