void main() { 
  print('Start main');

  final total = getAllData();
  total.then((value) {
    print('Total | then: $value');
  }).catchError((error) {
    print('Error: $error');
  });

  print('Total: $total');

  print('Finish main');
}

Future<int> getAllData() async {
  print('Start getAllData | async');
  final gettingAll = await Future.value(1609);
  print('Finish getAllData | after await');
  return gettingAll;
}
