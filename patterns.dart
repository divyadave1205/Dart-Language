import 'dart:io';

void mainPatterns() {
  pattern1();
  pattern2();
  pattern3();
  pattern4();
  pattern5();
  pattern6();
  pattern7();
  pattern8();
  space();
  pattern9();
  space1();
}

void pattern1() {
  int i, j;
  for (i = 1; i <= 5; i++) {
    for (j = 1; j <= 5; j++) {
      stdout.write('*');
    }
    print("");
  }
  for (j = 1; j <= 4; j++) {
    stdout.write('*');
  }
  print('');
}

void pattern2() {
  int i, j, k = 1;
  int ch = 97;
  for (i = 1; i <= 5; i++) {
    for (j = 1; j <= i; j++) {
      if (i % 2 == 0) {
        stdout.write(String.fromCharCode(ch));
        // stdout.write(String.fromCharCode(97));

        ch++;
      } else {
        stdout.write(k);
        k++;
      }
    }
    print('');
  }
}

void pattern3() {
  int i, j;
  for (i = 0; i <= 5; i++) {
    for (j = 0; j <= i; j++) {
      if ((i + j) % 2 != 0) {
        stdout.write('*');
      } else {
        stdout.write('*');
      }
    }
    print('');
  }
}

void pattern4() {
  int i, j;
  for (i = 0; i <= 5; i++) {
    for (j = 0; j <= i; j++) {
      if ((i + j) % 2 != 0) {
        stdout.write(0);
      } else {
        stdout.write(1);
      }
    }
    print('');
  }
}

void pattern5() {
  int i, j;
  for (i = 1; i <= 5; i++) {
    for (j = i; j <= 5; j++) {
      stdout.write(' ');
    }
    for (j = 1; j <= i; j++) {
      if (j == 1) stdout.write('*');

      if (j == 2)
        stdout.write('.');
      else {
        stdout.write(' ');
      }
    }
    for (j = 1; j <= i - 1; j++) {
      if (j == i - 1) stdout.write('*');
      if (j == i - 2)
        stdout.write('.');
      else
        stdout.write(' ');
    }
    print('');
  }
  for (i = 1; i <= 5; i++) {
    for (j = 1; j <= i; j++) {
      stdout.write(' ');
    }
    for (j = i; j <= 5; j++) {
      if (j == i) stdout.write('*');
      if (j == i + 1)
        stdout.write('.');
      else
        stdout.write(' ');
    }
    for (j = i + 1; j <= 5; j++) {
      if (j == 4) stdout.write('.');
      if (j == 5)
        stdout.write('*');
      else
        stdout.write(' ');
    }
    print('');
  }
  for (i = 1; i <= 3; i++) {
    for (j = i; j <= 3; j++) {
      stdout.write(' ');
    }
    for (j = 1; j <= i; j++) {
      if (j == 1) stdout.write(' *');

      if (j == 2)
        stdout.write('.');
      else {
        stdout.write(' ');
      }
    }
    for (j = 1; j <= i; j++) {
      if (j == i) stdout.write('*');
      if (j == i - 1)
        stdout.write('.');
      else
        stdout.write(' ');
    }

    print('');
  }
}

void pattern6() {
  int i, j;
  int ch = 97;
  for (i = 1; i <= 5; i++) {
    for (j = 1; j <= i; j++) {
      stdout.write(String.fromCharCode(ch));
      ch++;
    }
    for (j = i; j <= 5; j++) {
      if (i % 2 != 1) {
        stdout.write('*');
      } else {
        stdout.write('*');
      }
    }
    print('');
  }
}

void pattern7() {
  int i, j;
  for (i = 0; i <= 5; i++) {
    for (j = i; j <= 5; j++) {
      if ((i + j) % 2 != 0) {
        stdout.write('*');
      } else {
        stdout.write('*');
      }
    }
    print('');
  }
  for (i = 2; i <= 5; i++) {
    for (j = 1; j <= i; j++) {
      if ((i + j) % 2 == 0) {
        stdout.write('*');
      } else {
        stdout.write('*');
      }
    }
    print('');
  }
}

void pattern8() {
  int i, j;

  for (i = 1; i <= 3; i++) {
    for (j = 1; j <= i; j++) {
      stdout.write('*');
    }

    for (j = i; j <= 2; j++) {
      stdout.write('+');
    }
    for (j = 1; j <= 2; j++) {
      if ((i + j) == 2) {
        stdout.write('+');
      } else {
        stdout.write('*');
      }
    }
    print('');
  }
}

void space() {
  print('');
}

void pattern9() {
  int i, j, k = 1;
  for (i = 1; i <= 2; i++) {
    for (j = 1; j <= 3; j++) {
      if ((i + j) == 5) {
        stdout.write(k);
        k++;
      } else {
        stdout.write('*');
      }
    }
    for (j = 1; j <= 2; j++) {
      stdout.write('*');
    }
    print('');
  }
  for (i = 1; i <= 3; i++) {
    for (j = 1; j <= i; j++) {
      stdout.write('*');
    }
    for (j = i; j <= 2; j++) {
      stdout.write(k);
    }
    for (j = 1; j <= 2; j++) {
      if ((i + j) == 2) {
        stdout.write(k);
      } else {
        stdout.write('*');
      }
    }
    print('');
    k++;
  }
}




void space1() {
  print('');
}

void main() {
  int n;
  print('enter number : ');
  n = int.parse(stdin.readLineSync().toString());
  for (int i = 0; i <= n; i++) {
    bool k = true;
    for (int j = 0; j <= i + 3; j++) {
      if (j >= (n + 1) - i && j <= (n - 1) + i && k) {
        stdout.write("*");
        k = false;
      } else {
        stdout.write(' ');
        k = true;
      }
    }
    print("\n");
  }
}
