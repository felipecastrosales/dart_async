void main() {
  print('Start main');

  // Future<String>(() {
  //   print('Func executed');
  //   return 'Future result';
  // }).then(print);

  Future<String>.sync(() {
    print('sync | Func executed');
    // throw Exception('sync | Error');
    return 'sync | Future resuglt';
  }).then(print);

  print('Finish main');
}
