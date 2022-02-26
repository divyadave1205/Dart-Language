void higherOrderFunction() {
  Function a() {
    int i = 456;
    Function b = () {
      print(i);
      print("good morning..! : ");
      Function c = () {
        Function x = () {
          print("how are you!!!");
          return "divya";
        };
        print('hello friends..');
        return x;
      };
      return c;
    };
    return b;
  }

  Function d = a();
  Function f = d();
  Function g = f();
  print(g());
  print('');
  Function handloom() {
    String handloom1 = "pillow and metresses";
    Function crockery = () {
      print(handloom1);
      String crockery1 = "dinnerSet and teaset";
      Function furniture = () {
        String furniture1 = "chair and table";
        print(crockery1);
        print(furniture1);
        return "homeDecor";
      };
      return furniture;
    };
    return crockery;
  }

  Function q = handloom();
  Function r = q();
  print(r());
  print('');

  Function application() {
    String massaging = """
    whatsapp,
    facebook,
    twitter,
    snapchat,
    instagram 
    """;
    Function massenger = () {
      print(massaging);
      String calling = """
      trucaller
      googleDuo
      webex
      zoom""";
      Function caller = () {
        print(calling);
        return "android apps";
      };
      return caller;
    };
    return massenger;
  }

  Function h = application();
  Function n = h();
  print(n());
}
