class colour {
  String colours = "black,blue,red,pink,yellow";
  String func1() {
    return colours;
  }

  colour.print() {
    print("in colour.print");
  }

  factory colour(String colour1, String colour2) {
    return colour.print();
  }
}

void funcs() {
  // colour obj = colour("blue", "black");
  // print(obj.func1());
  colour ert = colour.print();
  print(ert.func1());
}

const int xOrigin = 10;
const int yOrigin = 20;

class point {
  int funcw() {
    const int x = 30;
    const int y = 40;

    return x + y;
  }

  point(int a, int b) {
    int d = xOrigin;
  }

  factory point.view() {
    return point(10, 20);
  }
  point.Origin(int j) : this(10, 20);
}

void funcr() {
  // point obj = point(10, 20);
  // print(obj.funcw());
  point rty = point.view();
  print(rty.funcw());

  point wer = point.Origin(30);
  print(wer.funcw());
}

const double aprint = 123.4;
const double bprint = 345.67;

class abc {
  double funcv() {
    double a = 12.21;
    double b = 34.43;
    return a * b;
  }

  abc.print(int a, int b) {
    print("abc def ghi ");
  }

  abc.view(int c, int d) {
    print("jkl mno pqr ");
  }
  factory abc(double j) {
    print("in abc");
    if (j <= 4)
      return abc.print(10, 20);
    else
      return abc.view(30, 40);
  }
}

void funn() {
  abc obj = abc(1);
  print(obj.funcv());
}

const String women = "saree,choli,kurti";
const String girl = "shorts,tshirt,jeans,crop tops";
const String child = "dangris,shorts";

class A {
  String women1() {
    return women;
  }

  String girl1() {
    return girl;
  }

  String child1() {
    return child;
  }

  A(String s, String t) {
    print("clothes for  women");
  }
  A.girl() {
    print("clothes for  girl");
  }
  factory A.child() {
    print("clothes for  child");
    return A.girl();
  }
}

class B extends A {
  B() : super("dress", "choli");
  B.print() : super.girl();
}

void func1() {
  B obj = B();
  print(obj.women1());
  print("");
  B wer = B.print();
  print(wer.girl1());
  print("");
  A rty = A.child();
  print(rty.child1());
}
