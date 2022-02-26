class GetterSetterExample {
  String _name = "mitul";
  getName() {
    return _name;
  }

  setName(String value) {
    _name = value;
  }

  String get name => _name;
  // value fetch
  set name(String value) => _name = value;
  // value set or value assign
}
