void main() {
  // Future -> Status
  //   Incomplete.
  //   Complete with success.
  //   Complete with error.

  Future(() {
    // async function
    print('Future(() { ... })');
  });

  var value = Future(() {}).then(
    (value) {
      // register callback - executed when future is completed and with success
      print('Future(() { ... }).then((value) => print(value))');
    },
  ).catchError(
    (error) {
      // register callback - executed when future is completed and with error
      print('Future(() { ... }).catchError((error) => print(error))');
    },
  ).whenComplete(
    () {
      // register callback - always executed (when success and/or error)
      print('Future(() { ... }).whenComplete(() => print(completed))');
    },
  );

  print(value);
}
