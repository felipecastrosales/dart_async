import 'dart:async';

void main() {
  // 1.
  print('Start main');

  // 5.
  Timer.run(() {
    print('event loop 1');
  });

  // 6.
  Timer.run(() {
    print('event loop 2');
  });

  // 7.
  Timer.run(() {
    print('event loop 3');
  });

  // 8.
  Timer.run(() {
    scheduleMicrotask(() {
      print('scheduleMicrotask 3');
    });
    print('event loop 4');
  });

  // 3.
  scheduleMicrotask(() {
    print('scheduleMicrotask 1');
  });

  // 4.
  scheduleMicrotask(() {
    print('scheduleMicrotask 2');
  });

  // 2.
  print('End main');
}
