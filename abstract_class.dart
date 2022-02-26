abstract class ABsNormalClass {
  int sum2() {
    return 2 + 4;
  }
}

class Vehicals {
  void stearing() {
    print("this is the normal stearing !");
  }
}

class NormalClass implements ABsNormalClass {
  int sum() {
    return 2 + 4;
  }

  @override
  int sum2() {
    throw UnimplementedError();
  }
}

class Car implements Vehicals {
  @override
  stearing() {
    throw UnimplementedError();
  }
}

class Truck extends Vehicals {}

void main() {
  NormalClass nc1 = NormalClass();
  nc1.sum();
  ABsNormalClass a = NormalClass();
}

abstract class A {
  int sum2() {
    return 50 * 89;
  }
}

class x {
  int sum2() {
    return 200 - 45;
  }
}

class C implements x {
  @override
  int sum2() {
    throw UnimplementedError();
  }
}
