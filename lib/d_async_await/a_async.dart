void main() {
  final method = methodAsyncWithoutAwait();
  method.then(print).catchError(print);

  final method2 = methodAsyncDynamic();
  print(method2);

  final method3 = methodAsyncWithAwait();
  print(method3);

  // ignore: unused_local_variable
  final method4 = methodAsyncVoid();
  // print(method4);

  final method5 = methodAsyncVoidFuture();
  print(method5);

  methodAsyncVoidFuture().whenComplete(
    () => print('methodAsyncVoidFuture'),
  );
}

Future<String> methodAsyncWithoutAwait() {
  return Future.value('Result');
}

methodAsyncDynamic() async {
  return 'Result';
}

// Envelop with Future.value
Future<String> methodAsyncWithAwait() async {
  return 'Result';
  // return Future.value('Result'); // same result
}

void methodAsyncVoid() async {
  print('Result');
}

Future<void> methodAsyncVoidFuture() async {
  return Future.value();
}
