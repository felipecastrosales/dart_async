Future<void> main() async {
  print('Start main');
  print('Start main');

  // final name2 = await searchName(id).catchError((error) {
  //   print('Has error');
  //   return 'Lorem Ipsum';
  // });

  try {
    final id = await searchId();
    final name = await searchName(id);
    print('Name: $name');
  } catch (error) {
    print('Has error');
  }

  // print('Name2: $name2');

  print('Finish main');
}

Future<int> searchId() async => 7;

Future<String> searchName(int id) async {
  // final id = await searchId();
  // final name = await searchName(id);
  // return 'Username: $name';
  // 2
  throw Exception();
}
