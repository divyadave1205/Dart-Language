import 'dart:io';
import 'banking2.dart';

class Destinations {
  String? fromPlace;
  String? toPlace;
  DateTime? time;
  int? ticket;

  Destinations({
    this.fromPlace,
    this.time,
    this.toPlace,
    this.ticket,
  });
}

class Info {
  List<Destinations> destinationData = [
    Destinations(
        fromPlace: "surat",
        toPlace: "amreli",
        time: DateTime.parse("2012-02-27 07:30:00"),
        ticket: 50),
    Destinations(
        fromPlace: "surat",
        toPlace: "ahmedabad",
        time: DateTime.parse("2012-02-27 08:00:00"),
        ticket: 60),
    Destinations(
        fromPlace: "surat",
        toPlace: "jamnagar",
        time: DateTime.parse("2012-02-27 08:30:00"),
        ticket: 70),
    Destinations(
        fromPlace: "surat",
        toPlace: "rajkot",
        time: DateTime.parse("2012-02-27 09:00:00"),
        ticket: 80),
    Destinations(
        fromPlace: "surat",
        toPlace: "bhavnagar",
        time: DateTime.parse("2012-02-27 09:30:00"),
        ticket: 90),
    Destinations(
        fromPlace: "amreli",
        toPlace: "surat",
        time: DateTime.parse("2012-02-27 10:00:00"),
        ticket: 100),
    Destinations(
        fromPlace: "amreli",
        toPlace: "ahmedabad",
        time: DateTime.parse("2012-02-27 10:30:00"),
        ticket: 110),
    Destinations(
        fromPlace: "amreli",
        toPlace: "rajkot",
        time: DateTime.parse("2012-02-27 11:00:00"),
        ticket: 120),
    Destinations(
        fromPlace: "amreli",
        toPlace: "bhavnagar",
        time: DateTime.parse("2012-02-27 11:30:00"),
        ticket: 130),
    Destinations(
        fromPlace: "amreli",
        toPlace: "jamnagar",
        time: DateTime.parse("2012-02-27 12:00:00"),
        ticket: 140),
    Destinations(
        fromPlace: "jamnagar",
        toPlace: "surat",
        time: DateTime.parse("2012-02-27 12:30:00"),
        ticket: 150),
    Destinations(
        fromPlace: "jamnagar",
        toPlace: "amreli",
        time: DateTime.parse("2012-02-27 01:00:00"),
        ticket: 160),
    Destinations(
        fromPlace: "jamnagar",
        toPlace: "rajkot",
        time: DateTime.parse("2012-02-27 01:30:00"),
        ticket: 170),
    Destinations(
        fromPlace: "jamnagar",
        toPlace: "bhavnagar",
        time: DateTime.parse("2012-02-27 02:00:00"),
        ticket: 180),
    Destinations(
        fromPlace: "jamnagar",
        toPlace: "ahmedabad",
        time: DateTime.parse("2012-02-27 02:30:00"),
        ticket: 190),
    Destinations(
        fromPlace: "ahmedabad",
        toPlace: "surat",
        time: DateTime.parse("2012-02-27 03:00:00"),
        ticket: 195),
    Destinations(
        fromPlace: "ahmedabad",
        toPlace: "rajkot",
        time: DateTime.parse("2012-02-27 03:30:00"),
        ticket: 200),
    Destinations(
        fromPlace: "ahmedabad",
        toPlace: "bhavnagar",
        time: DateTime.parse("2012-02-27 04:00:00"),
        ticket: 210),
    Destinations(
        fromPlace: "ahmedabad",
        toPlace: "jamnagar",
        time: DateTime.parse("2012-02-27 04:30:00"),
        ticket: 220),
    Destinations(
        fromPlace: "ahmedabad",
        toPlace: "amreli",
        time: DateTime.parse("2012-02-27 05:00:00"),
        ticket: 230),
    Destinations(
        fromPlace: "bhavnagar",
        toPlace: "amreli",
        time: DateTime.parse("2012-02-27 05:30:00"),
        ticket: 240),
    Destinations(
        fromPlace: "bhavnagar",
        toPlace: "surat",
        time: DateTime.parse("2012-02-27 06:00:00"),
        ticket: 250),
    Destinations(
        fromPlace: "bhavnagar",
        toPlace: "ahmedabad",
        time: DateTime.parse("2012-02-27 06:30:00"),
        ticket: 260),
    Destinations(
        fromPlace: "bhavnagar",
        toPlace: "rajkot",
        time: DateTime.parse("2012-02-27 07:00:00"),
        ticket: 270),
    Destinations(
        fromPlace: "bhavnagar",
        toPlace: "jamnagar",
        time: DateTime.parse("2012-02-27 07:30:00"),
        ticket: 280),
  ];
  void dest(String? fromPlace) {
    List<Destinations> newDestinationData = [];
    destinationData.forEach((Destinations element) {
      if (element.fromPlace == fromPlace) {
        newDestinationData.add(element);
      }
    });
    print("add start place & and place to show time and ticket price ");
    for (int i = 0; i < newDestinationData.length; i++) {
      print("${i + 1}:${newDestinationData[i].fromPlace}");
      print("${i + 1}:${newDestinationData[i].toPlace}");
      print("${i + 1}:${newDestinationData[i].time}");
      print("${i + 1}:${newDestinationData[i].ticket}");
    }
  }

  void metro({String? fromPlace}) {
    List<Destinations> newDestinationData = [];
    destinationData.forEach((Destinations element) {
      if (element.fromPlace == fromPlace) {
        newDestinationData.add(element);
      }
    });
  }

  bool valid = true;
  information() {
    while (valid) {
      dest("dfd");
      metro(fromPlace: "vbgn");
      print("enter the start place");
      String? fromPlace = stdin.readLineSync();
      print("enter the destination where you want to go ");
      String? toPlace = stdin.readLineSync();
      int index = 1;
      List<Destinations> newDestinationData = [];
      destinationData.forEach((Destinations element) {
        if (element.fromPlace == fromPlace && element.toPlace == toPlace) {
          newDestinationData.add(element);
          print("you are going to ${element.fromPlace} to ${element.toPlace}");
          print("your train will arrive at ${element.time}");
          print("your ticket price is ${element.ticket}");
          print("press $index to book a ticket");
          index++;
        }
      });

      int? choice = int.parse(stdin.readLineSync()!);

      print(
          "you are going from ${newDestinationData[choice - 1].fromPlace} to ${newDestinationData[choice - 1].toPlace}");
      print("your train will arrive at ${newDestinationData[choice - 1].time}");
      print("your ticket price is ${newDestinationData[choice - 1].ticket}");
      destins(newDestinationData[choice - 1].ticket!);
      valid = false;
    }
  }

  destins(int ticketPrice) {
    print("enter your accountNo/phoneNo.");
    String num = stdin.readLineSync()!;
    personList.forEach((Person element) {
      if (num.toString() == element.accountNo.toString() ||
          num.toString() == element.phoneNo.toString()) {
        personList.forEach((Person element) {
          print("enter your pin");
          int newPin = int.parse(stdin.readLineSync()!);
          if (newPin.toString() == element.pin.toString()) {
            if (element.balance! > ticketPrice || element.balance != 0) {
              element.balance = element.balance! - ticketPrice.toInt();
            } else {
              print("you dont have sufficient ballnce for withdraw");
            }
            print("your balance is ${element.balance}");

            history.add(Withdrawl(
              phoneNo: element.phoneNo!,
              accountNo: element.accountNo,
              withdrawlAmt: ticketPrice,
              date: DateTime.now(),
              massage: "you withdrawed $ticketPrice amount",
            ));
            print("amount of $ticketPrice is withdrawed from your account");
          } else {
            print("enter valid pin");
          }
        });
      } else {
        print("enter valid no.");
      }
    });
  }

  Info() {}
}

void infos() {
  Info obj = Info();
  obj.information();
}
