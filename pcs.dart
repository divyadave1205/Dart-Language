import "dart:io";

class ComputerShop {
  List<Pc> computerDataList = [
    Pc(
        companyName: PcCompanies.ACER,
        modelNumber: "ACER:12ert",
        screenSize: "34''",
        resolution: "1090p",
        cofiguration: "2TB - HDD, 127 SSD, 6GB RAM",
        framerate: "50FPS",
        colorScheme: "RGB",
        price: "35,000/-"),
    Pc(
        companyName: PcCompanies.ACER,
        modelNumber: "ACER:34qwe",
        screenSize: "24''",
        resolution: "1070p",
        cofiguration: "1TB - HDD, 167 SSD, 2GB RAM",
        framerate: "90FPS",
        colorScheme: "RGB",
        price: "56,000/-"),
    Pc(
        companyName: PcCompanies.AOC,
        modelNumber: "AOC:we34",
        screenSize: "23''",
        resolution: "1080p",
        cofiguration: "3TB - HDD, 123 SSD, 8GB RAM",
        framerate: "80FPS",
        colorScheme: "RGB",
        price: "67,000/-"),
    Pc(
        companyName: PcCompanies.AOC,
        modelNumber: "AOC:rt56",
        screenSize: "54''",
        resolution: "2090p",
        cofiguration: "4TB - HDD, 178 SSD, 8GB RAM",
        framerate: "80FPS",
        colorScheme: "RGB",
        price: "76,000/-"),
    Pc(
        companyName: PcCompanies.LENOVO,
        modelNumber: "LENOVO:qw34",
        screenSize: "23''",
        resolution: "1234p",
        cofiguration: "5TB - HDD, 123 SSD, 10GB RAM",
        framerate: "70FPS",
        colorScheme: "RGB",
        price: "78,000/-"),
    Pc(
        companyName: PcCompanies.LENOVO,
        modelNumber: "LENOVO:78uy",
        screenSize: "56''",
        resolution: "1670p",
        cofiguration: "6TB - HDD, 135 SSD, 8GB RAM",
        framerate: "50FPS",
        colorScheme: "RGB",
        price: "89,000/-"),
    Pc(
        companyName: PcCompanies.PHILIPS,
        modelNumber: "PHILIPS:23rty",
        screenSize: "35''",
        resolution: "1080p",
        cofiguration: "7TB - HDD, 134 SSD, 16GB RAM",
        framerate: "90FPS",
        colorScheme: "RGB",
        price: "90,000/-"),
    Pc(
        companyName: PcCompanies.PHILIPS,
        modelNumber: "PHILIPS:34ert",
        screenSize: "15''",
        resolution: "900p",
        cofiguration: "0.5TB - HDD, 50 SSD, 2GB RAM",
        framerate: "40FPS",
        colorScheme: "RGB",
        price: "20,000/-"),
  ];

  computerDetails() {
    void computerInfo() {
      print("welcome! to our shop");
      print("1." + companyType(PcCompanies.ACER).toString());
      print("2." + companyType(PcCompanies.AOC).toString());
      print("3." + companyType(PcCompanies.LENOVO).toString());
      print("4." + companyType(PcCompanies.PHILIPS).toString());
      print("5.EXIT");
    }

    PcCompanies? companyIndexno(int? companyIndex) {
      switch (companyIndex) {
        case 1:
          return PcCompanies.ACER;
        case 2:
          return PcCompanies.AOC;
        case 3:
          return PcCompanies.LENOVO;
        case 4:
          return PcCompanies.PHILIPS;
      }
    }

    void model(PcCompanies companyName) {
      List<Pc> newPcList = [];
      computerDataList.forEach((Pc element) {
        if (element.companyName == companyName) {
          newPcList.add(element);
        }
      });
      print("Please select any model you want to show details!");
      for (int i = 0; i < newPcList.length; i++) {
        print("${i + 1} : ${newPcList[i].modelNumber}");
      }
    }

    bool info = true;
    while (info) {
      computerInfo();
      int company = int.parse(stdin.readLineSync()!);
      if (company == 5) {
        info = false;
        break;
      }

      switch (companyIndexno(company)!) {
        case PcCompanies.ACER:
          print("You selected the ACER company");
          model(PcCompanies.ACER);
          int models = int.parse(stdin.readLineSync()!);
          modelName(models, companyName: PcCompanies.ACER);
          break;
        case PcCompanies.AOC:
          print("You selected the ACER company");
          model(PcCompanies.AOC);
          int models = int.parse(stdin.readLineSync()!);
          modelName(models, companyName: PcCompanies.AOC);
          break;
        case PcCompanies.LENOVO:
          print("You selected the ACER company");
          model(PcCompanies.LENOVO);
          int models = int.parse(stdin.readLineSync()!);
          modelName(models, companyName: PcCompanies.LENOVO);
          break;
        case PcCompanies.PHILIPS:
          print("You selected the ACER company");
          model(PcCompanies.PHILIPS);
          int models = int.parse(stdin.readLineSync()!);
          modelName(models, companyName: PcCompanies.PHILIPS);
          break;
      }
    }
  }

  String? companyType(PcCompanies companyType) {
    switch (companyType) {
      case PcCompanies.ACER:
        return "ACER";
      case PcCompanies.AOC:
        return "AOC";
      case PcCompanies.LENOVO:
        return "LENOVO";
      case PcCompanies.PHILIPS:
        return "PHILIPS";
    }
  }

  void modelName(int? index, {PcCompanies? companyName}) {
    List<Pc> newPcList = [];
    computerDataList.forEach((Pc element) {
      if (element.companyName == companyName) {
        newPcList.add(element);
      }
    });
    print("Company Name : ${companyType(newPcList[index! - 1].companyName!)}");
    print("Model Number : ${newPcList[index - 1].modelNumber}");
    print("Screen Size : ${newPcList[index - 1].screenSize}");
    print("Resolution : ${newPcList[index - 1].resolution}");
    print("Configuration : ${newPcList[index - 1].cofiguration}");
    print("Framerate : ${newPcList[index - 1].framerate}");
    print("Color Scheme : ${newPcList[index - 1].colorScheme}");
    print("Price : ${newPcList[index - 1].price}");
  }

  ComputerShop() {}
}

void computer() {
  ComputerShop yui = ComputerShop();
  print(yui.computerDetails()());
}

enum PcCompanies {
  ACER,
  AOC,
  LENOVO,
  PHILIPS,
}

class Pc {
  final PcCompanies? companyName;
  final String? modelNumber;
  final String? screenSize;
  final String? resolution;
  final String? cofiguration;
  final String? framerate;
  final String? colorScheme;
  final String? price;
  Pc({
    this.companyName,
    this.modelNumber,
    this.screenSize,
    this.resolution,
    this.cofiguration,
    this.framerate,
    this.colorScheme,
    this.price,
  });
}
