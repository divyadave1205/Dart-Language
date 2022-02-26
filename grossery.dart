





import 'dart:io';

import 'banking.dart';

class GrosseryShop {
  List<Grossery> grosseryList = [
    Grossery(
      itemName: GrosseryItems.GRAINS,
      itemType: "wheat",
      PriceFor1Kg: "50",
      PriceFor500gm: "30",
      PriceFor250gm: "17",
      PriceFor100gm: "7",
    ),
    Grossery(
      itemName: GrosseryItems.GRAINS,
      itemType: "rice",
      PriceFor1Kg: "45",
      PriceFor500gm: "23",
      PriceFor250gm: "15",
      PriceFor100gm: "10",
    ),
    Grossery(
      itemName: GrosseryItems.GRAINS,
      itemType: "corn",
      PriceFor1Kg: "60",
      PriceFor500gm: "30",
      PriceFor250gm: "15",
      PriceFor100gm: "7",
    ),
    Grossery(
      itemName: GrosseryItems.SPROUTS,
      itemType: "chikpeas",
      PriceFor1Kg: "60",
      PriceFor500gm: "30",
      PriceFor250gm: "15",
      PriceFor100gm: "7",
    ),
    Grossery(
      itemName: GrosseryItems.SPROUTS,
      itemType: "beans",
      PriceFor1Kg: "60",
      PriceFor500gm: "30",
      PriceFor250gm: "15",
      PriceFor100gm: "7",
    ),
    Grossery(
      itemName: GrosseryItems.SPROUTS,
      itemType: "peas",
      PriceFor1Kg: "60",
      PriceFor500gm: "30",
      PriceFor250gm: "15",
      PriceFor100gm: "7",
    ),
    Grossery(
      itemName: GrosseryItems.OIL,
      itemType: "sunflower oil",
      priceFor1lit: "60",
      priceFor500ml: "30",
      priceFor250ml: "15",
      priceFor100ml: "7",
    ),
    Grossery(
      itemName: GrosseryItems.OIL,
      itemType: "cottonseed oil",
      priceFor1lit: "60",
      priceFor500ml: "30",
      priceFor250ml: "15",
      priceFor100ml: "7",
    ),
    Grossery(
      itemName: GrosseryItems.OIL,
      itemType: "groundnut oil",
      priceFor1lit: "120",
      priceFor500ml: "70",
      priceFor250ml: "37",
      priceFor100ml: "10",
    ),
    Grossery(
      itemName: GrosseryItems.GHEE,
      itemType: "amul",
      PriceFor1Kg: "500",
      PriceFor500gm: "250",
      PriceFor250gm: "150",
      PriceFor100gm: "80",
    ),
    Grossery(
      itemName: GrosseryItems.GHEE,
      itemType: "sumul",
      PriceFor1Kg: "580",
      PriceFor500gm: "280",
      PriceFor250gm: "190",
      PriceFor100gm: "90",
    ),
    Grossery(
      itemName: GrosseryItems.GHEE,
      itemType: "sagar",
      PriceFor1Kg: "400",
      PriceFor500gm: "200",
      PriceFor250gm: "100",
      PriceFor100gm: "40",
    ),
    Grossery(
      itemName: GrosseryItems.SUGAR,
      itemType: "madhur",
      PriceFor1Kg: "40",
      PriceFor500gm: "20",
      PriceFor250gm: "10",
      PriceFor100gm: "5",
    ),
    Grossery(
      itemName: GrosseryItems.SUGAR,
      itemType: "sweetly",
      PriceFor1Kg: "40",
      PriceFor500gm: "20",
      PriceFor250gm: "10",
      PriceFor100gm: "5",
    ),
    Grossery(
      itemName: GrosseryItems.SUGAR,
      itemType: "sugarlite",
      PriceFor1Kg: "40",
      PriceFor500gm: "20",
      PriceFor250gm: "10",
      PriceFor100gm: "5",
    ),
    Grossery(
      itemName: GrosseryItems.SALT,
      itemType: "tata",
      PriceFor1Kg: "20",
      PriceFor500gm: "10",
      PriceFor250gm: "7",
      PriceFor100gm: "5",
    ),
    Grossery(
      itemName: GrosseryItems.SALT,
      itemType: "nirma",
      PriceFor1Kg: "30",
      PriceFor500gm: "15",
      PriceFor250gm: "8",
      PriceFor100gm: "5",
    ),
    Grossery(
      itemName: GrosseryItems.SALT,
      itemType: "dandi",
      PriceFor1Kg: "25",
      PriceFor500gm: "13",
      PriceFor250gm: "7",
      PriceFor100gm: "5",
    ),
  ];
  String? GrosseryType(GrosseryItems GrosseryType) {
    switch (GrosseryType) {
      case GrosseryItems.GRAINS:
        return "GRAINS";
      case GrosseryItems.SPROUTS:
        return "SPROUTS";
      case GrosseryItems.OIL:
        return "OIL";
      case GrosseryItems.GHEE:
        return "GHEE";
      case GrosseryItems.SUGAR:
        return "SUGAR";
      case GrosseryItems.SALT:
        return "SALT";
    }
  }

  GrosseryItems? grosseryIndexNo(int? grosseryIndex) {
    switch (grosseryIndex) {
      case 1:
        return GrosseryItems.GRAINS;
      case 2:
        return GrosseryItems.SPROUTS;
      case 3:
        return GrosseryItems.OIL;
      case 4:
        return GrosseryItems.GHEE;
      case 5:
        return GrosseryItems.SUGAR;
      case 6:
        return GrosseryItems.SALT;
    }
  }

  void item(GrosseryItems itemName) {
    List<Grossery> newGrosseryList = [];
    grosseryList.forEach((Grossery element) {
      if (element.itemName.toString() == itemName.toString()) {
        newGrosseryList.add(element);
      }
    });
    print("select any item from ${itemName.toString()} for price");
    for (int i = 0; i < newGrosseryList.length; i++) {
      print("${i + 1}: ${newGrosseryList[i].itemType.toString()}");
    }
  }

  void groserryName(int? index, {GrosseryItems? itemName}) {
    List<Grossery> newGrosseryList = [];
    grosseryList.forEach((Grossery element) {
      if (element.itemName == itemName) {
        newGrosseryList.add(element);
      }
    });
    print(
        "itemName : ${GrosseryType((newGrosseryList[index! - 1].itemName!))}");
    print("itemType : ${(newGrosseryList[index - 1].itemType!)}");

    if (newGrosseryList[index - 1].itemName == GrosseryItems.OIL) {
      print("priceFor1lit:${newGrosseryList[index - 1].priceFor1lit}");
      print("priceFor500ml:${newGrosseryList[index - 1].priceFor500ml}");
      print("priceFor250ml:${newGrosseryList[index - 1].priceFor250ml}");
      print("priceFor100ml:${newGrosseryList[index - 1].priceFor100ml}");
    } else {
      print("PriceFor1Kg:${newGrosseryList[index - 1].PriceFor1Kg}");
      print("PriceFor500gm:${newGrosseryList[index - 1].PriceFor500gm}");
      print("PriceFor250gm:${newGrosseryList[index - 1].PriceFor250gm}");
      print("PriceFor100gm:${newGrosseryList[index - 1].PriceFor100gm}");
    }

    print("\n\n");
    print("1. Purchase");
    int choice = int.parse(stdin.readLineSync()!);
    if (choice.toString() == "1") {
      if (newGrosseryList[index - 1].itemName == GrosseryItems.OIL) {
        print("11. 1lit:${newGrosseryList[index - 1].priceFor1lit}");
        print("22. 500ml:${newGrosseryList[index - 1].priceFor500ml}");
        print("33. 250ml:${newGrosseryList[index - 1].priceFor250ml}");
        print("44. 100ml:${newGrosseryList[index - 1].priceFor100ml}");
      } else {
        print("1. 1Kg:${newGrosseryList[index - 1].PriceFor1Kg}");
        print("2. 500gm:${newGrosseryList[index - 1].PriceFor500gm}");
        print("3. 250gm:${newGrosseryList[index - 1].PriceFor250gm}");
        print("4. 100gm:${newGrosseryList[index - 1].PriceFor100gm}");
      }

      int purchaseChoice = int.parse(stdin.readLineSync()!);
      switch (purchaseChoice) {
        case 1:
          print(newGrosseryList[index - 1].PriceFor1Kg);
          purchase(
              double.parse(newGrosseryList[index - 1].PriceFor1Kg!.toString()),
              newGrosseryList[index - 1].itemName!.toString());

          break;
        case 2:
          print(newGrosseryList[index - 1].PriceFor500gm);
          purchase(
              double.parse(
                  newGrosseryList[index - 1].PriceFor500gm!.toString()),
              newGrosseryList[index - 1].itemName!.toString());

          break;
        case 3:
          print(newGrosseryList[index - 1].PriceFor250gm);
          purchase(
              double.parse(
                  newGrosseryList[index - 1].PriceFor250gm!.toString()),
              newGrosseryList[index - 1].itemName!.toString());

          break;
        case 4:
          print(newGrosseryList[index - 1].PriceFor100gm);
          purchase(
              double.parse(
                  newGrosseryList[index - 1].PriceFor100gm!.toString()),
              newGrosseryList[index - 1].itemName!.toString());

          break;
        case 11:
          print(newGrosseryList[index - 1].priceFor1lit);
          purchase(
              double.parse(newGrosseryList[index - 1].priceFor1lit!.toString()),
              newGrosseryList[index - 1].itemName!.toString());

          break;
        case 22:
          print(newGrosseryList[index - 1].priceFor500ml);
          purchase(
              double.parse(
                  newGrosseryList[index - 1].priceFor500ml!.toString()),
              newGrosseryList[index - 1].itemName!.toString());

          break;
        case 33:
          print(newGrosseryList[index - 1].priceFor250ml);
          purchase(
              double.parse(
                  newGrosseryList[index - 1].priceFor250ml!.toString()),
              newGrosseryList[index - 1].itemName!.toString());

          break;
        case 44:
          print(newGrosseryList[index - 1].priceFor100ml);
          purchase(
              double.parse(
                  newGrosseryList[index - 1].priceFor100ml!.toString()),
              newGrosseryList[index - 1].itemName!.toString());

          break;
      }
    }
  }

  void purchase(
    double purchaseAmt,
    String itemName,
  ) {
    print("enter your phone no./account no.");
    int? No = int.parse(stdin.readLineSync()!);
    Withdraw();

    personList.forEach((Person element) {
      if (No.toString() == element.accountNo.toString() ||
          No.toString() == element.phoneNo.toString()) {
        personList.forEach((Person element) {
          print("enter your pin");
          int newPin = int.parse(stdin.readLineSync()!);
          if (element.pin.toString() == newPin.toString()) {
            if (element.balance! > purchaseAmt || element.balance != 0) {
              element.balance = element.balance! - purchaseAmt.toInt();
              print(element.balance.toString());
            } else {
              print("you dont have sufficient balance for withdraw");
            }

            history.add(Withdraw(
                phoneNo: element.phoneNo,
                accountno: element.accountNo,
                withdrawl: purchaseAmt.toInt(),
                date: DateTime.now(),
                message: "you purchased $itemName worth rs.$purchaseAmt."));

            print(
                "amount of ${purchaseAmt.toInt()} withdrawed from your account");
          } else {
            print("enter valid pin");
          }
        });
      } else {
        print("enter valid no");
      }
    });
  }

  grosseryStore() {
    showGrosseryDetails() {
      print("welcome to our grossery store");
      print("1." + GrosseryType(GrosseryItems.GRAINS).toString());
      print("2." + GrosseryType(GrosseryItems.SPROUTS).toString());
      print("3." + GrosseryType(GrosseryItems.OIL).toString());
      print("4." + GrosseryType(GrosseryItems.GHEE).toString());
      print("5." + GrosseryType(GrosseryItems.SUGAR).toString());
      print("6." + GrosseryType(GrosseryItems.SALT).toString());
      print("7. Exit");
    }

    bool Grossery = true;
    while (Grossery) {
      showGrosseryDetails();
      print("enter a Grossery type for view price");
      int? grossery = int.parse(stdin.readLineSync()!);
      if (grossery == 7) {
        Grossery = false;
        break;
      }
      switch (grosseryIndexNo(grossery)!) {
        case GrosseryItems.GRAINS:
          print("you slected grains");
          item(GrosseryItems.GRAINS);
          int items = int.parse(stdin.readLineSync()!);
          groserryName(items, itemName: GrosseryItems.GRAINS);
          break;
        case GrosseryItems.SPROUTS:
          print("you slected sprouts");
          item(GrosseryItems.SPROUTS);
          int items = int.parse(stdin.readLineSync()!);
          groserryName(items, itemName: GrosseryItems.SPROUTS);
          break;
        case GrosseryItems.OIL:
          print("you slected oil");
          item(GrosseryItems.OIL);
          int items = int.parse(stdin.readLineSync()!);
          groserryName(items, itemName: GrosseryItems.OIL);
          break;
        case GrosseryItems.GHEE:
          print("you slected ghee");
          item(GrosseryItems.GHEE);
          int items = int.parse(stdin.readLineSync()!);
          groserryName(items, itemName: GrosseryItems.GHEE);
          break;
        case GrosseryItems.SUGAR:
          print("you slected sugar");
          item(GrosseryItems.SUGAR);
          int items = int.parse(stdin.readLineSync()!);
          groserryName(items, itemName: GrosseryItems.SUGAR);
          break;
        case GrosseryItems.SALT:
          print("you slected salt");
          item(GrosseryItems.SALT);
          int items = int.parse(stdin.readLineSync()!);
          groserryName(items, itemName: GrosseryItems.SALT);
          break;
      }
    }
  }

  GrosseryShop() {}
}

void gross() {
  GrosseryShop obj = GrosseryShop();
  obj.grosseryStore();
}

enum GrosseryItems {
  GRAINS,
  SPROUTS,
  OIL,
  GHEE,
  SUGAR,
  SALT,
}

class Grossery {
  final String? itemType;
  final GrosseryItems? itemName;
  final String? PriceFor1Kg;
  final String? PriceFor500gm;
  final String? PriceFor250gm;
  final String? PriceFor100gm;
  final String? priceFor1lit;
  final String? priceFor500ml;
  final String? priceFor250ml;
  final String? priceFor100ml;
  Grossery({
    this.itemType,
    this.itemName,
    this.PriceFor1Kg,
    this.PriceFor500gm,
    this.PriceFor250gm,
    this.PriceFor100gm,
    this.priceFor1lit,
    this.priceFor500ml,
    this.priceFor250ml,
    this.priceFor100ml,
  });
}
