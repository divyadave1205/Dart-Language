import 'dart:io';
import 'banking2.dart';

class GrosseryShop {
  List<Grossery> grosseryList = [
    Grossery(
      itemType: GrosseryItem.GRAINS,
      itemName: "wheat",
      priceFor1kg: "50",
      priceFor500gm: "40",
      priceFor250gm: "30",
      priceFor100gm: "20",
    ),
    Grossery(
      itemType: GrosseryItem.GRAINS,
      itemName: "rice",
      priceFor1kg: "60",
      priceFor500gm: "30",
      priceFor250gm: "20",
      priceFor100gm: "10",
    ),
    Grossery(
      itemType: GrosseryItem.GRAINS,
      itemName: "corn",
      priceFor1kg: "40",
      priceFor500gm: "30",
      priceFor250gm: "20",
      priceFor100gm: "10",
    ),
    Grossery(
      itemType: GrosseryItem.SPROUTS,
      itemName: "Cheakpeas",
      priceFor1kg: "30",
      priceFor500gm: "25",
      priceFor250gm: "20",
      priceFor100gm: "10",
    ),
    Grossery(
      itemType: GrosseryItem.SPROUTS,
      itemName: "peas",
      priceFor1kg: "50",
      priceFor500gm: "40",
      priceFor250gm: "30",
      priceFor100gm: "20",
    ),
    Grossery(
      itemType: GrosseryItem.SPROUTS,
      itemName: "beans",
      priceFor1kg: "50",
      priceFor500gm: "40",
      priceFor250gm: "30",
      priceFor100gm: "25",
    ),
    Grossery(
      itemType: GrosseryItem.OIL,
      itemName: "Sunflower oil",
      priceFor1lit: "1150",
      priceFor500ml: "740",
      priceFor250ml: "530",
      priceFor100ml: "320",
    ),
    Grossery(
      itemType: GrosseryItem.OIL,
      itemName: "groundnut oil",
      priceFor1lit: "2350",
      priceFor500ml: "940",
      priceFor250ml: "730",
      priceFor100ml: "520",
    ),
    Grossery(
      itemType: GrosseryItem.OIL,
      itemName: "cottonseed oil",
      priceFor1lit: "1250",
      priceFor500ml: "640",
      priceFor250ml: "330",
      priceFor100ml: "120",
    ),
    Grossery(
      itemType: GrosseryItem.SALT,
      itemName: "dandi",
      priceFor1kg: "50",
      priceFor500gm: "40",
      priceFor250gm: "30",
      priceFor100gm: "20",
    ),
    Grossery(
      itemType: GrosseryItem.SALT,
      itemName: "tata",
      priceFor1kg: "50",
      priceFor500gm: "40",
      priceFor250gm: "30",
      priceFor100gm: "20",
    ),
    Grossery(
      itemType: GrosseryItem.SALT,
      itemName: "nirma",
      priceFor1kg: "50",
      priceFor500gm: "40",
      priceFor250gm: "30",
      priceFor100gm: "20",
    ),
    Grossery(
      itemType: GrosseryItem.SUGAR,
      itemName: "madhur",
      priceFor1kg: "30",
      priceFor500gm: "15",
      priceFor250gm: "10",
      priceFor100gm: "5",
    ),
    Grossery(
      itemType: GrosseryItem.SUGAR,
      itemName: "sweetly",
      priceFor1kg: "40",
      priceFor500gm: "30",
      priceFor250gm: "20",
      priceFor100gm: "10",
    ),
    Grossery(
      itemType: GrosseryItem.SUGAR,
      itemName: "sugarLite",
      priceFor1kg: "40",
      priceFor500gm: "30",
      priceFor250gm: "20",
      priceFor100gm: "10",
    ),
    Grossery(
      itemType: GrosseryItem.GHEE,
      itemName: "amul",
      priceFor1kg: "500",
      priceFor500gm: "250",
      priceFor250gm: "130",
      priceFor100gm: "70",
    ),
    Grossery(
      itemType: GrosseryItem.GHEE,
      itemName: "sumul",
      priceFor1kg: "580",
      priceFor500gm: "260",
      priceFor250gm: "150",
      priceFor100gm: "70",
    ),
    Grossery(
      itemType: GrosseryItem.GHEE,
      itemName: "sagar",
      priceFor1kg: "400",
      priceFor500gm: "200",
      priceFor250gm: "100",
      priceFor100gm: "50",
    ),
  ];
  String? GrosseryType(GrosseryItem grosseryType) {
    switch (grosseryType) {
      case GrosseryItem.GRAINS:
        return "GRAINS";
      case GrosseryItem.SPROUTS:
        return "SPROUTS";
      case GrosseryItem.OIL:
        return "OIL";
      case GrosseryItem.GHEE:
        return "GHEE";
      case GrosseryItem.SUGAR:
        return "SUGAR";
      case GrosseryItem.SALT:
        return "SALT";
    }
  }

  GrosseryItem? grosseryIndexNo(int? grosseryIndex) {
    switch (grosseryIndex) {
      case 1:
        return GrosseryItem.GRAINS;
      case 2:
        return GrosseryItem.SPROUTS;
      case 3:
        return GrosseryItem.OIL;
      case 4:
        return GrosseryItem.SUGAR;
      case 5:
        return GrosseryItem.SALT;
    }
  }

  void item(GrosseryItem itemName) {
    List<Grossery> newGrosseryList = [];
    grosseryList.forEach((Grossery element) {
      if (element.itemName == itemName) {
        newGrosseryList.add(element);
      }
    });
    print("select any one item from ${GrosseryType(itemName)} for know price");
    for (int i = 0; i < newGrosseryList.length; i++) {
      print("${i + 1}:${newGrosseryList[i].itemType}");
    }
  }

  void nameOfGrossery(int? index, {GrosseryItem? itemName}) {
    List<Grossery> newGrosseryList = [];
    grosseryList.forEach((Grossery element) {
      if (element.itemName == itemName) {
        newGrosseryList.add(element);
      }
    });
    print("itemName:${GrosseryType((newGrosseryList[index! - 1].itemType!))}");
    print("itemType:${(newGrosseryList[index - 1].itemName!)}");
    if (newGrosseryList[index - 1].itemName == GrosseryItem.OIL) {
      print("priceFor1lit:${newGrosseryList[index - 1].priceFor1lit}");
      print("priceFor500ml:${newGrosseryList[index - 1].priceFor500ml}");
      print("priceFor250ml:${newGrosseryList[index - 1].priceFor250ml}");
      print("priceFor100ml:${newGrosseryList[index - 1].priceFor100ml}");
    } else {
      print("PriceFor1Kg:${newGrosseryList[index - 1].priceFor1kg}");
      print("PriceFor500gm:${newGrosseryList[index - 1].priceFor500gm}");
      print("PriceFor250gm:${newGrosseryList[index - 1].priceFor250gm}");
      print("PriceFor100gm:${newGrosseryList[index - 1].priceFor100gm}");
    }
    print("");
    print("1.purchase");
    int choice = int.parse(stdin.readLineSync()!);
    if (choice.toString() == "1") {
      if (newGrosseryList[index - 1].itemName == GrosseryItem.OIL) {
        print("1.1lit:${newGrosseryList[index - 1].priceFor1lit}");
        print("2.500ml:${newGrosseryList[index - 1].priceFor500ml}");
        print("3.250ml:${newGrosseryList[index - 1].priceFor250ml}");
        print("4.100ml:${newGrosseryList[index - 1].priceFor100ml}");
      } else {
        print("5.1Kg:${newGrosseryList[index - 1].priceFor1kg}");
        print("6.500gm:${newGrosseryList[index - 1].priceFor500gm}");
        print("7.250gm:${newGrosseryList[index - 1].priceFor250gm}");
        print("8.100gm:${newGrosseryList[index - 1].priceFor100gm}");
      }
      int purchaseChoice = int.parse(stdin.readLineSync()!);
      switch (purchaseChoice) {
        case 1:
          print(newGrosseryList[index - 1].priceFor1lit);
          purchase(
              double.parse(newGrosseryList[index - 1].priceFor1lit!.toString()),
              newGrosseryList[index - 1].itemName!.toString());

          break;
        case 2:
          print(newGrosseryList[index - 1].priceFor500ml);
          purchase(
              double.parse(
                  newGrosseryList[index - 1].priceFor500ml!.toString()),
              newGrosseryList[index - 1].itemName!.toString());

          break;
        case 3:
          print(newGrosseryList[index - 1].priceFor250ml);
          purchase(
              double.parse(
                  newGrosseryList[index - 1].priceFor250ml!.toString()),
              newGrosseryList[index - 1].itemName!.toString());

          break;
        case 4:
          print(newGrosseryList[index - 1].priceFor100ml);
          purchase(
              double.parse(
                  newGrosseryList[index - 1].priceFor100ml!.toString()),
              newGrosseryList[index - 1].itemName!.toString());

          break;
        case 5:
          print(newGrosseryList[index - 1].priceFor1kg);
          purchase(
              double.parse(newGrosseryList[index - 1].priceFor1kg!.toString()),
              newGrosseryList[index - 1].itemName!.toString());

          break;
        case 6:
          print(newGrosseryList[index - 1].priceFor500gm);
          purchase(
              double.parse(
                  newGrosseryList[index - 1].priceFor500gm!.toString()),
              newGrosseryList[index - 1].itemName!.toString());

          break;
        case 7:
          print(newGrosseryList[index - 1].priceFor250gm);
          purchase(
              double.parse(
                  newGrosseryList[index - 1].priceFor250gm!.toString()),
              newGrosseryList[index - 1].itemName!.toString());

          break;
        case 8:
          print(newGrosseryList[index - 1].priceFor100gm);
          purchase(
              double.parse(
                  newGrosseryList[index - 1].priceFor100gm!.toString()),
              newGrosseryList[index - 1].itemName!.toString());

          break;
      }
    }
  }

  void purchase(
    double purchaseAmt,
    String itemName,
  ) {
    print("enter your accountNo/phoneNo.");
    String num = stdin.readLineSync()!;
    personList.forEach((Person element) {
      if (num == element.accountNo || num == element.phoneNo) {
        personList.forEach((Person element) {
          print("enter your pin");
          int newPin = int.parse(stdin.readLineSync()!);
          if (newPin == element.pin) {
            if (element.balance! > purchaseAmt || element.balance != 0) {
              element.balance = element.balance! - purchaseAmt.toInt();
            } else {
              print("you dont have sufficient ballnce for withdraw");
            }
            print("your balance is ${element.balance}");

            history.add(Withdrawl(
              phoneNo: element.phoneNo!,
              accountNo: element.accountNo,
              withdrawlAmt: purchaseAmt.toInt(),
              date: DateTime.now(),
              massage: "you withdrawed $purchaseAmt amount",
            ));
            print("amount of $purchaseAmt is withdrawed from your account");
          } else {
            print("enter valid pin");
          }
        });
      } else {
        print("enter valid no.");
      }
    });
  }

  grosseryStore() {
    grosserydetails() {
      print("welcome to our grossery store");
      print("1." + GrosseryType(GrosseryItem.GRAINS).toString());
      print("2." + GrosseryType(GrosseryItem.SPROUTS).toString());
      print("3." + GrosseryType(GrosseryItem.OIL).toString());
      print("4." + GrosseryType(GrosseryItem.GHEE).toString());
      print("5." + GrosseryType(GrosseryItem.SUGAR).toString());
      print("6." + GrosseryType(GrosseryItem.SALT).toString());
      print("7. Exit");
    }

    bool truth = true;
    while (truth) {
      grosserydetails();
      print("enter a grossery to view details about it");
      int? choice = int.parse(stdin.readLineSync()!);
      if (choice == 7) {
        truth = false;
        break;
      }
      switch (grosseryIndexNo(choice)!) {
        case GrosseryItem.GRAINS:
          print("you selected GRAINS");
          item(GrosseryItem.GRAINS);
          int things = int.parse(stdin.readLineSync()!);
          nameOfGrossery(things, itemName: GrosseryItem.GRAINS);

          break;
        case GrosseryItem.SPROUTS:
          print("you selected SPROUTS");
          item(GrosseryItem.SPROUTS);
          int things = int.parse(stdin.readLineSync()!);
          nameOfGrossery(things, itemName: GrosseryItem.SPROUTS);
          break;
        case GrosseryItem.OIL:
          print("you selected OIL");
          item(GrosseryItem.OIL);
          int things = int.parse(stdin.readLineSync()!);
          nameOfGrossery(things, itemName: GrosseryItem.OIL);
          break;
        case GrosseryItem.GHEE:
          print("you selected GHEE");
          item(GrosseryItem.GHEE);
          int things = int.parse(stdin.readLineSync()!);
          nameOfGrossery(things, itemName: GrosseryItem.GHEE);
          break;
        case GrosseryItem.SALT:
          print("you selected SALT");
          item(GrosseryItem.SALT);
          int things = int.parse(stdin.readLineSync()!);
          nameOfGrossery(things, itemName: GrosseryItem.SALT);
          break;
        case GrosseryItem.SUGAR:
          print("you selected SUGAR");
          item(GrosseryItem.SUGAR);
          int things = int.parse(stdin.readLineSync()!);
          nameOfGrossery(things, itemName: GrosseryItem.SUGAR);
          break;
      }
    }
  }

  GrosseryShop() {}
}

enum GrosseryItem {
  GRAINS,
  SPROUTS,
  OIL,
  GHEE,
  SUGAR,
  SALT,
}
void gross2() {
  GrosseryShop obj = GrosseryShop();
  obj.grosseryStore();
}

class Grossery {
  final GrosseryItem? itemType;
  final String? itemName;
  final String? priceFor1kg;
  final String? priceFor500gm;
  final String? priceFor250gm;
  final String? priceFor100gm;
  final String? priceFor1lit;
  final String? priceFor500ml;
  final String? priceFor250ml;
  final String? priceFor100ml;
  Grossery({
    this.itemType,
    this.itemName,
    this.priceFor1kg,
    this.priceFor500gm,
    this.priceFor250gm,
    this.priceFor100gm,
    this.priceFor1lit,
    this.priceFor500ml,
    this.priceFor250ml,
    this.priceFor100ml,
  });
}
