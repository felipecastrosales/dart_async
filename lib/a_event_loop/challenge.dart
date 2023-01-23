import 'dart:async';

void main() {
  // 1
  print('Start main');

  Timer.run(() {
    // 6
    scheduleMicrotask(() {
      print('new scheduleMicrotask 1');
    });
    // 5
    print('event loop 1');
  });

  // 7
  Timer.run(() {
    print('event loop 2');
  });

  // 8
  Timer.run(() {
    print('event loop 3');
  });

  scheduleMicrotask(() {
    // 3
    print('scheduleMicrotask 1');
  });

  scheduleMicrotask(() {
    // 4
    print('scheduleMicrotask 2');
  });

  // 2
  print('End main');
}
