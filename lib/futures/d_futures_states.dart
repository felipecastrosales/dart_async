void main() {
  print('started | maintenance budget');

  Future(() {
    // async function - make the maintenance budget
    return 10 ~/ 2;
  }).then((budget) {
    print('Maintenance budget: $budget');
  }).catchError((error) {
    print('Ops, has error: $error');
  }).whenComplete(() {
    print('finished the maintenance');
  });

  print('finished | maintenance budget');

  //////////////////////////////////////////////////////////////////////////////

  print('started | MacBook example');

  print('MacBook example');
  Future<String>(() {
    return 'My MacBook';
    // throw 'Crashed';
  }).then((bought) {
    print('yes, I bought a $bought');
  }).catchError((error) {
    // ops, has error
    print('ops, has error when buying a MacBook: $error');
    print('ops, has a problem');
  }).whenComplete(() {
    print('finished buying a MacBook');
  });

  print('finished | MacBook example');

  //////////////////////////////////////////////////////////////////////////////

  Future<int>(() {
    return 10 ~/ 2;
  }).then((value) {
    print('Value: $value');
  });

  Future<int>(() {
    return 10 ~/ 0;
  }).then(
    (value) {
      print('Value: $value');
    },
    onError: (error) {
      print('Error: $error');
      // throw Exception('Error: $error'); if has this, catchError is called
    },
  ).catchError((error) {
    print('Ops, has error: $error');
  });

  Future<int>(() {
    return 10 ~/ 0;
  }).then((value) {
    print('Value: $value');
  }).catchError(
    (error) {
      print('Ops, has error: $error');
    },
    // test: (error) {
    //   // if (error is IntegerDivisionByZeroException) {
    //   //   return true;
    //   // }
    //   return true; // false
    // },
    test: (error) {
      return error is UnsupportedError;
    },
  ).catchError((error) {
    print('Ops, has great error: $error');
  });
}
