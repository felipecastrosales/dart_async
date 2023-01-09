void main() {
  // Callback Hell
  func1().then((value) {
    func2(value).then((value) {
      print(value);
      // func1().then((value) {
      // func2(value);
      // });
    });
  });

  func1()
      .then((value) => func2(value))
      .then((value) => print('value is: $value'));

  var func1Var = func1();
  var func2Var = func1Var.then((value) => func2(value));

  print('func1 | hashCode: ${func1Var.hashCode}');
  print('func2 | hashCode: ${func2Var.hashCode}');

  func2Var.then((value) => print(value));
}

Future<String> func1() {
  return Future.delayed(Duration(seconds: 1), () => 'Parameter func1');
}

Future<String> func2(String parameter) {
  return Future.value('Parameter received and processed: $parameter');
}
