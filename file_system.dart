import 'dart:io';

fileSystem() {
  final a = Directory.systemTemp;

  print(a.path);
  Directory(a.path + "/265265").create();
  Directory(a.path + "/5678").createSync();
  Directory(a.path).createTemp();
  print(a.path);

  Directory(a.path + "/temp").exists();
  Directory(a.path + "/temp1").existsSync();
  Directory(a.path + "/265265").rename(a.path + "/temp1");

  final a1 = "C:/divya/dart language";
  File(a1 + "/pcs2.dart").create();

  File(a1 + "/pcs2.dart").createSync();
  File(a1 + "/pc.dart").copy("C:/divya/dart language" + "/pcs2.dart");
  print(a1);
  File(a1 + "/pcs2.dart").exists();
  File(a1 + "/pcs2.dart").existsSync();
  File(a1 + "/pc.dart").rename(a1 + "/pcs3.dart");
}
