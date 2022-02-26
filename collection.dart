// import 'dart:web_gl';

import 'dart:collection';

enum MobileCompanies {
  samsung,
  lg,
  oppo,
  vivo,
}
enumExample(MobileCompanies mobileCompanies) {
  print(mobileCompanies);

  enum2() {
    print('another function call');
  }
}

listExamples() {
  List colourList = [1];
  colourList.add([1, 2, 3, 4]);

  print(colourList[1][1]);
  colourList.clear();
  print(colourList);

  colourList = ['red', 'green', 'blue', 'orange', 'red', 'pink'];
  for (String data in colourList) {
    print("1:" + data);
  }
  print(colourList.indexOf("red"));
  print(colourList.indexWhere((element) {
    return element == "orange";
  }));
  print(colourList.lastIndexWhere((element) {
    return element == "red";
  }));
  colourList.removeWhere((element) {
    return element == "orange";
  });
  print(colourList);
  print(colourList.any((element) {
    return element == "pink";
  }));
  colourList = ['1', '1', '1', '1', '1', '1'];
  print(colourList.every((element) {
    return element == "1";
  }));

  dynamic colourData = colourList.getRange(1, 4);
  print(colourData);

  colourList = ['red', 'green', 'blue', 'orange', 'pink'];
  colourList.fillRange(1, 4, 2);
  print(colourList);

  colourList.insert(2, "brown");
  print(colourList);
  colourList.insertAll(2, colourData);
  print(colourList);
  colourList = ['red', 'green', 'blue', 'orange', 'pink'];

  colourList.remove("red");
  print(colourList);
  colourList = ['red', 'green', 'blue', 'orange', 'pink'];
  colourList.removeAt(2);
  print(colourList);
  colourList.removeLast();
  print(colourList);
  colourList.removeRange(1, 2);
  print(colourList);
  colourList = ['red', 'green', 'blue', 'orange', 'pink'];
  colourList.replaceRange(1, 3, ["golden", "magenta"]);
  print(colourList);
  colourList = ['red', 'green', 'blue', 'orange', 'pink'];

  colourList.setAll(2, ["maroon , grey"]);

  print(colourList);
  // colourList = ['red', 'green', 'blue', 'orange', 'pink'];
  List clothList = ["shirt", "pent", "tshirt", "jeans", 'trouser'];
  colourList.setRange(1, 4, clothList, 2);
  print(colourList);
  colourList.shuffle();
  print(colourList);
  colourList.sort();
  print(colourList);
  print(colourList.sublist(1, 3));

  List clothList1 = [1, 1, 1, 1, 1];

  print(clothList1.runtimeType);
  colourList = ['red', 'green', 'blue', 'orange', 'pink'];
  print(colourList.contains("red"));
  print(colourList.elementAt(3));
  List colourList1 = [
    [1, 2],
    [3, 4]
  ];
  dynamic clothList2 = colourList1.expand((colourList1) => colourList1);
  print(clothList2.runtimeType);
  colourList = ['red', 'green', 'blue', 'orange', 'red', 'pink'];

  colourList.forEach((element) {});
  colourList = ['red', 'green', 'blue', 'orange', 'red', 'pink'];

  print(colourList.join(','));
  colourList = ['red', 'green', 'blue', 'orange', 'red', 'pink'];

  print(colourList.lastWhere((element) {
    return element == "red";
  }));
  colourList = ['red', 'green', 'blue', 'orange', 'red', 123];
  print(colourList.toList());
  print(colourList.where((element) {
    return element == 'red';
  }));
  print(colourList.whereType<int>());
  // print(colourList.toSet());
}

setExamples() {
  Set dataSet = {1, 2, 3, 4};
  Set dataChange = {4, 6, 7, 8};
  print(dataSet.difference(dataChange));
  print(dataSet.intersection(dataChange));
  print(dataSet.lookup(4));
  print(dataSet.union(dataChange));
  print(dataSet.elementAt(2));
  print(dataSet.fold(dataSet, (datachange, element) {
    return element == 4;
  }));
  print(dataSet.followedBy(dataChange));
  dataSet = {"red", "black", "orange", "golden"};

  print(dataSet.singleWhere((dataChange) {
    return dataChange == 'black';
  }));
  dataSet = {1, 2, 3, 4};
}

mapExamples() {
  Map dataMap = {"colour": "red", 1: "pink", 2: "black"};
  Map dataChange = {'bird': 'dove', 'sweet': 'sugar'};

  dataChange.forEach((key, value) {
    print('1:' + value.toString() + "2:" + key.toString());
  });

  print(dataMap.containsKey("colour"));
  print(dataMap.containsValue("red"));
  print(dataMap.putIfAbsent("colour", () {
    return "colour" == "red";
  }));
  print(dataMap.update("colour", (dataMap) {
    return "brown";
  }));

  dataMap.addEntries([MapEntry("bird", "dove")]);
  print(dataMap);

  dataMap.updateAll((key, value) => "white");
  print(dataMap);
  print(dataMap.runtimeType);
}

queueExamples() {
  Queue dataQueue = Queue();
  dataQueue.add("colours");
  dataQueue.addAll(["red", "pink", "black", "orange"]);

  print(dataQueue);
}

practise() {
  List list1 = [
    'abc',
    'abc2',
    'abc3',
    'abc4',
    'abc5',
    'abc6',
    'abc7',
    [
      'list1',
      'list2',
      'list3',
      'list4',
      'list5',
      'list6',
      'list7',
      {'student_id': '1', 'student_name': 'john'},
      {'setlist', 'setlist2'}
    ],
  ];
  Set data = list1[7][8];
  print(data.first);
  List list2 = [
    'red',
    'pink',
    'brown',
    'purple',
    'blue',
    [
      'dove',
      'peacock',
      'sparrow',
      'parrot',
      'swan',
      {
        'colourList',
        'birdList',
        {'listOfcoloursAndBirds', 'birds'}
      },
    ]
  ];
  Set data1 = list2[5][5];

  print(data1.elementAt(2).elementAt(0));
  List list3 = [
    'computer',
    'cpu',
    'mouse',
    'keyBoard',
    'speaker',
    [
      'hardDisk',
      'floppyDisk',
      'tranzister',
      {
        'hardware',
        'software',
        {
          'computerParts',
          'electric',
          {'computers'}
        }
      }
    ]
  ];

  Set data3 = list3[5][3];
  print(data3.elementAt(2).elementAt(2));

  List dataList = [
    "first",
    "second",
    {
      "first_s",
      "second_s",
      {
        "key1": "first_m",
        "key2": "second_m",
        "key3": "third_m",
        "key4": {
          "123",
          123,
          2345,
          true,
          "false",
          [
            "sad",
            "dfhdfg",
            {
              "anot": "asdsad",
              "123": [
                "asd",
                2,
                43,
                456.456,
                false,
                {
                  123,
                  {
                    "abc": "asdad",
                    "this_k": "fetch this value",
                  }
                }
              ],
            }
          ],
        }
      }
    },
    "third",
  ];
  Set dataList1 = dataList[2];

  print(dataList1
      .elementAt(2)["key4"]
      .elementAt(5)
      .elementAt(2)["123"]
      .elementAt(5)
      .elementAt(1)["this_k"]);

  int num = 2;
  switch (num) {
    case 1:
      num = 1;
      print(num);
      break;

    case 2:
      num = 2;
      print(num);

      break;

    case 3:
      num = 3;
      print(num);

      break;

    case 4:
      num = 4;
      print(num);

      break;
  }
}
