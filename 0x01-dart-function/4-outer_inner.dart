String outer(String name, String id) {
  List<String> words = name.split(' ');
  
  String firstWord = words[0];
  String secondWord = words[1];

  String lastInitial = secondWord[0];
  String modifiedFirstWord = "$lastInitial.$firstWord";

  words[0] = modifiedFirstWord;
  words.removeAt(1);

  return 'Hello Agent $modifiedFirstWord your id is $id';
}

void main() {
  String result = outer("Youssef Belhadj", "001");
  print(result);
}