Future<void> main() async {
  print('Start main');

  final names = ['John', 'Jane', 'Bob'];

  // ignore: avoid_function_literals_in_foreach_calls
  // names.forEach((name) async {
  //   final result = await welcome(name);
  //   print(result);
  // });
  // names.forEach(welcomeSeparated);

  // for (final name in names) {
  //   await welcomeSeparated(name);
  // }

  // Future.forEach(names, welcomeSeparated);
  // await Future.forEach<String>(names, (name) async {
  //   await welcome(name);
  // });

  final namesFuture = names.map((name) => welcome(name)).toList();
  final processedNames = await Future.wait(namesFuture);
  print(processedNames);

  print('Finish main');
}

Future<void> welcomeSeparated(String name) async {
  final welcomeName = await welcome(name);
  print(welcomeName);
}

Future<String> welcome(String name) async {
  print('Start welcome $name');
  return Future.delayed(
    Duration(seconds: 1),
    () {
      print('Finish welcome $name');
      return 'Welcome, $name';
    },
  );
}
