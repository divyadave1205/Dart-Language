// class A {
//   int a = 10;
//   int _b = 20;
//   int func1() {
//     print('dsbn');

//     return _b;
//   }

//   void func2(int k) {
//     _b = k;
//   }
// }

// void func3() {
//   A obj = A();

//   print(obj.func1());
// }

// class B {
//   String _cloth = "cotton,net,velvet";
//   String num = " 123.456";
//   String func1(int a) {
//     print("cloth");
//     return _cloth;
//   }

//   String func2(String s) {
//     _cloth = s;
//     return s;
//   }
// }

// void func() {
//   B obj = B();
//   print(obj.func1(10));
//   print(obj.func2("fabric"));
// }

class C {
  int a = 10;
  int _b = 20;
  int func1() {
    print("10,20,30");
    return _b;
  }
}

void f() {
  C obj = C();
  print(obj.func1());
}
