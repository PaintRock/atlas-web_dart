import 'dart:io';

void main() {
  String str = stdin.readLineSync()!;
  String result = str * 3;
  print(result + '\n' + str.substring(0, 9) + '\n\n');
}