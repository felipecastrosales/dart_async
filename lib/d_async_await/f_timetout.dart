import 'dart:async';

void main() {
  // final awaiting = insertingAnythingMoreSlow();
  print('DateTime: ${DateTime.now().toIso8601String()}');

  // awaiting
  //     .timeout(Duration(seconds: 1), onTimeout: () => print('onTimeout'))
  //     .then((value) => print('finish'))
  //     .catchError((error) {
  //   print('Finish with error $error');
  // });

  try {
    final awaiting = insertingAnythingMoreSlow().timeout(Duration(seconds: 2));
    print('DateTime2: ${DateTime.now().toIso8601String()}');
    print(awaiting);
  } on TimeoutException catch (error) {
    print('Finish with error $error');
  }
}

Future<void> insertingAnythingMoreSlow() {
  return Future.delayed(
    Duration(seconds: 3),
    () {
      print('Inserting anything more slow');
      print('DateTime2: ${DateTime.now().toIso8601String()}');
    },
  );
}
