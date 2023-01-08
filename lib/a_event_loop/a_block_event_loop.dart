// blocking threads

import 'dart:io';

void main() {
  print('Start main');
  print(actualTemperature());
  print(previousTemperature());
  print('End main');
}

String actualTemperature() {
  sleep(Duration(seconds: 3));
  return 'Temperature is 25C';
}

String previousTemperature() {
  sleep(Duration(seconds: 4));
  return 'Temperature was 30C';
}
