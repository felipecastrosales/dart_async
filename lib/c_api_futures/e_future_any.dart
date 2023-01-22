void main() {
  print('Start main');

  var f1 = Future.delayed(Duration(seconds: 2), () => 'f1');
  var f2 = Future.delayed(Duration(seconds: 1), () => 'f2');
  var f3 = Future.delayed(Duration(seconds: 3), () => 'f3');
  var f4 = Future.delayed(Duration(milliseconds: 200), () => 'f4');
  var f5 = Future.delayed(Duration(seconds: 2), () => 'f5');

  Future.any([f1, f2, f3, f4, f5]).then(print).catchError(print);

  print('Finish main');
}
