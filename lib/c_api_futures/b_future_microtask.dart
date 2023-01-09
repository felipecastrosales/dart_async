void main() {
  print('Start main');

  // Future<String>(() {
  //   print('Func executed');
  //   return 'Future result';
  // }).then(print);

  Future<String>.microtask(() {
    print('microtask | Func executed');
    // throw Exception('microtask | Error');
    return 'microtask | Future resuglt';
  }).then(print).catchError(print);

  print('Finish main');
}
