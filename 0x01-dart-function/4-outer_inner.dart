import 

void outer(String name, String id) {
  String inner() {
    List<String> words = name.split(' ');
    
    String firstWord = words[0];
    String secondWord = words[1];

    String lastInitial = secondWord[0];
    String modifiedFirstWord = "$lastInitial.$firstWord";

    return 'Hello Agent $modifiedFirstWord your id is $id';
  }
  print(inner());
}

void main() {
  outer("Youssef Belhadj", "001");
}