parameter() {
  /// There are three types of passing parameters in function..
  /// 1. Positional Parameters:
  /// this types of parameters are compolsury and positional.
  /// ex.
  /// int AddFunctoin(int a, int b){
  ///   return a+b;
  /// }
  ///
  /// in the above function we pass parameter/ arguements "a" and "b"
  /// and both are compolsury.
  ///
  ///
  /// 2. Optional Parameters:
  /// this types of parameters are not compolsury but positional.
  /// ex. int AddFunctoin(int a, [int b, int c]){
  ///
  ///   return a+10;
  /// }
  ///
  ///AddFunctoin(10,20);
  ///in the above example we pass three parametes one of them is (positional/compolsury) and other two are (optional/positional)
  ///if we do not pass value of variable "a" in the function then it will give the error.
  ///and If we do not pass value for variables "b" and "c" then it will not give error.
  ///
  /// 3. named parameters :
  /// this types of parameter are not compolsury and also not possitional
  /// ex.
  /// int AddFunctoin({int a, String name}){
  ///   return a+b;
  /// }
  ///
  /// in the above example if we do not pass arguements for any of the variables then It will not give any error.
  /// and also if we pass any arguements then it is not neccesory to pass in any order.
  ///
  /// we can pass value for this types of variables in any orders.
  /// like.
  ///
  /// AddFunctoin(name: "mitul",a: 20);
  ///
  ///
  /// * default value in parameters:
  /// when we are using optional parameters and possitional paramers then we can use the default value for the arguements
  /// suppose we are using optional parameters and ew do not pass any value when we call that function then it will give an error.
  /// so, when we are not passing any value in the parameter then we have to give any default value for that arguements.
  ///
  /// int AddFunction(int a, {int b = 10}){
  ///   return a + b;
  /// }
  ///
  /// AddFunctoin(20, b: 20);
}
parameterPractise() {
  int PositionalParameter(int a, int b) {
    return a + b;
  }

  print(PositionalParameter(10, 20));

  int optionalParameter(int a, [int? b, int? c]) {
    return a + b! + c!;
  }

  print(optionalParameter(10, 20, 30));

  int namedParameter({int? a, int? b}) {
    return a! + b!;
  }

  print(namedParameter(a: 10, b: 20));

  int defaultParameter(int a, {int b = 10}) {
    return a + b;
  }

  print(defaultParameter(10));
}
