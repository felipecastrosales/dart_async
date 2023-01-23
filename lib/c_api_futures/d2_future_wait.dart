void main() {
  print('Start main');

  var f1 = Future.delayed(Duration(seconds: 1), () => 'f1');
  var f2 = Future.delayed(Duration(seconds: 1), () => 'f2');
  var f3 = Future.delayed(Duration(seconds: 3), () => 'f3');
  var f4 = Future.delayed(Duration(seconds: 1), () => 'f4');
  var f5 = Future.delayed(
    Duration(seconds: 1),
    () => Future.error('runtime error'),
  );
  var f6 = Future.delayed(
    Duration(seconds: 1),
    () => Future.value('runtime error'),
  );

  // Future.wait([f1, f2, f3, f4]).then(print);
  // Future.wait([f5, f1, f2, f3, f4]).then(print);

  print(DateTime.now().toIso8601String());

  Future.wait(
    [f1, f2, f3, f4, f6],
    eagerError: true,
    cleanUp: (value) {
      print('Clean up: $value');
    },
  ).then((arrayValues) {
    print(arrayValues[0]);
    print(arrayValues[1]);
    print(arrayValues[3]);
    print(arrayValues);
  });

  Future.wait([f5, f1, f2, f3, f4, f6]).then((arrayValues) {
    print(arrayValues[0]);
    print(arrayValues[1]);
    print(arrayValues[3]);
    print(arrayValues);
  }).catchError((error) {
    print('DateTime: ${DateTime.now().toIso8601String()}');
    print('Has error: $error');
  });

  print('Finish main');
}
