void functionPractice() {
  Function func() {
    int i = 20;
    Function a = () {
      print(i);
      print("hello..! : ");
      Function d = () {
        print('hii..');
        return "d";
      };
      return d;
    };
    return a;
  }

  Function s = func();
  Function e = s();

  print(e());
  //// anonymous function:
  Function a = (Function b) {
    print("this function is anonymous function! : ");

    b(190);
  };

  a((int c) {
    print(c);
  });
  print(' ');

  Function f = (Function t) {
    t("types of fabric");
    print("1.cotton");
    print("2.silk");
    print("3.reon");
    print("4.velvet");
    print("5.net");
  };
  f((String s) {
    print(s);
  });
  print(' ');

  Function w = (Function e) {
    print('welcome');
    e("args");
  };
  w((String d) {
    print(d);
  });
  print(' ');

  Function b = (Function c) {
    c("vegetables");
    print("""potato,
onion,
cauliFlower,
beans,
tomato,
cabbage.""");
  };
  b((String veg) {
    print(veg);
  });
  print(' ');
  Function wer = (Function asd) {
    asd("types of");
    print("""
    1.chinise
    2.indian,
    3.italian,
    4.maxican,""");
  };
  wer((String food) {
    print(food);
  });
}

enum ComputerParts {
  moniter,
  keyBoard,
  mouse,
  cpu,
}

moniter() {
  print("""moniter
  price = 3500
  company = sony""");
}

keyBoard() {
  print("""keyBoard
  price = 2000
  company = dell""");
}

mouse() {
  print("""mouse
  price=300
  company = hp""");
}

cpu() {
  print("""cpu
  price = 2500
  company = lg""");
}

enumExample1(ComputerParts computerParts) {
  switch (computerParts) {
    case ComputerParts.moniter:
      moniter();
      break;

    case ComputerParts.keyBoard:
      keyBoard();
      break;
    case ComputerParts.mouse:
      mouse();
      break;
    case ComputerParts.cpu:
      cpu();
      break;
    default:
      print("enter valid choice");
  }
}
