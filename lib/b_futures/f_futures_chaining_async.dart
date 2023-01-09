void main() {
  // func1()
  //     .then(
  //       (value) => func2(),
  //     )
  //     .then(
  //       (value) => func3(),
  //     )
  //     .then(print)
  //     .catchError((error) => print('Making something with error: $error'));

  // func1()
  //     .then(
  //       (value) => func2(),
  //     )
  //     .catchError((error) {
  //       print('Has error in func2: $error');
  //       // return Future.value('Tried make something with error: $error');
  //       return 'func2 | error';
  //     })
  //     .then(
  //       (value) => func3(),
  //     )
  //     .then(print)
  //     .catchError((error) => print('Making something with error: $error'));

  func1()
      .then(
        (value) => func2(),
      )
      .then(
        (value) => func3(),
        onError: (error) {
          print('Has error in func2: $error');
          // return Future.value('func2 return value');
          return func3();
        },
      )
      .then(print)
      .catchError((error) => print('Making something with error: $error'));
}

Future<String> func1() {
  print('func1');
  return Future.value('Making something func1');
}

Future<String> func2() {
  print('func2');
  // return Future.value('Making something func2');
  // throw Exception('Exception in func2');
  return Future.error('Exception in func2');
}

Future<String> func3() {
  print('func3');
  return Future.value('Making something func3');
}
