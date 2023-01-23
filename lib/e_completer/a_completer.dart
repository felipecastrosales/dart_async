import 'dart:async';

Future<void> main() async {
  // var zero = findAny(0).then((value) => print(value)).catchError((error) {
  //   print('Finish with error $error');
  // });
  // print('zero: $zero');

  // var one = findAny(1).then((value) => print(value)).catchError((error) {
  //   print('Finish with error $error');
  // });
  // print('one: $one');

  try {
    final findValue = await findAny(1);
    print('findValue: $findValue');
  } catch (e, s) {
    print('e: $e');
    print('s: $s');
  }
}

Future<String> findAny(int number) {
  final completer = Completer<String>();
  Timer(
    Duration(seconds: 2),
    () {
      if (number == 0) {
        completer.complete('Number is 0');
      } else {
        completer.completeError('Number with error', StackTrace.current);
      }
    },
  );

  return completer.future;
}
