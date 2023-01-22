// -> sync
// void main() {
//   print('Start main');

//   searchUsername().then(print);
//   searchUsername2().then(print);

//   print('Finish main');
// }

// async
Future<void> main() async {
  print('Start main');

  searchUsername().then(print);
  await searchUsername2().then(print);

  print('Finish main');
}

Future<int> searchId() async => 7;
Future<String> searchName(int id) async => 'Felipe $id';

Future<String> searchUsername() {
  return searchId().then((id) {
    return searchName(id).then((name) {
      return 'Username: $name';
    });
  });
}

Future<String> searchUsername2() async {
  final id = await searchId();
  final name = await searchName(id);
  return 'Username: $name';
}
