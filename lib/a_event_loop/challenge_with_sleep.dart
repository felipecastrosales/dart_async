import 'dart:async';
import 'dart:io';

void main() {
  // If put this (below), the event loop will be blocked and await the duration for run others events
  // Timer.run(() {
  //   sleep(Duration(seconds: 3));
  //   print('event loop 4');
  // });

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

  // 9
  Timer.run(() {
    sleep(Duration(seconds: 3));
    print('event loop 4');
  });
}
