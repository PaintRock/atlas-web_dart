String outer(String name, String id) {
  String inner() {
    List<String> words = name.split(' ');
    
    String firstWord = words[0];
    String secondWord = words[1];

    String lastInitial = secondWord[0];
    String modifiedFirstWord = "$lastInitial.$firstWord";

    return 'Hello Agent $modifiedFirstWord your id is $id';
  }
  
  return inner();
}

void main() {
  String result = outer("Youssef Belhadj", "001");
  print(result);
}