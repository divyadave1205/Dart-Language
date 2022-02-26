void genericExample() {
  Student a = Student(name: "asd");
  List<Student> dataList = [
    Student(name: "name"),
    a,
  ];
  print(dataList.length);
}

class Student {
  final String? name;
  Student({this.name});
}
