import 'dart:async';

void main() {
  print('Start main');
  func0(2);
  func1();
  func2();
  func3();
  func4();
  func0(0);
  print('End main');
}

void func0(int i) {
  print('initializing func0');
  Future.delayed(Duration(seconds: i), () {
    print('making complex process func0 | $i');
  });
  print('finishing func0');
}

void func1() {
  print('initializing func1');
  Timer.run(() {
    print('making complex process func1');
  });
  print('finishing func1');
}

void func2() {
  print('initializing func2');
  Timer.run(() {
    print('making complex process func2');
  });
  print('finishing func2');
}

void func3() {
  print('initializing func3');
  Future.delayed(Duration(seconds: 3), () {
    print('making complex process func3');
  });
  print('finishing func3');
}

void func4() {
  print('initializing func4');
  Future.delayed(Duration(seconds: 5), () {
    print('making complex process func4');
  });
  print('finishing func4');
}
