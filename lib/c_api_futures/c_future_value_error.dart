void main() {
  print('Start main');

  Future(() {
    // return 'Future result';
    return Future.value('Future result');
  });

  Future(() {}); // Incomplete, because no value or error
  Future<String>.value(''); // -> Success
  Future<String>.error(''); // -> Error

  Future<String>.value('Future value').then(print);
  Future<String>.error('Future error');

  futureValue();
  futureValue().then(print);

  print('Finish main');
}

Future<String> futureValue() {
  return Future.value('Future value');
}
