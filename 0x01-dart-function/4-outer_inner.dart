void outer(String name, String id) {
  String inner() {
    print('Name: $name\nID: $id');
  }
  inner();
}

void main() {
  outer("Youssef Belhadj", "001");
}