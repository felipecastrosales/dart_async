import 'dart:async';

Future<void> main() async {
  final userRepository = UserRepository();

  userRepository.saveUser(
    (success) => print(success),
    (error) => print(error),
  );

  try {
    final success = await userRepository.saveUserCompleter();
    print('success: $success');
  } catch (e, s) {
    print('e: $e');
    print('s: $s');
  }
}

class UserRepository {
  void saveUser(
    void Function(String) callbackSucess,
    void Function(String) callbackError,
  ) {
    Timer(
      Duration(seconds: 2),
      () {
        try {
          throw Exception('Error to save user');
          // callbackSucess('User saved');
        } catch (e) {
          callbackError('Error to save user');
        }
      },
    );
  }

  Future<String> saveUserCompleter() async {
    final completer = Completer<String>();
    try {
      completer.complete('User saved');
    } catch (e, s) {
      completer.completeError('Error to save user', s);
    }
    return completer.future;
  }
}
