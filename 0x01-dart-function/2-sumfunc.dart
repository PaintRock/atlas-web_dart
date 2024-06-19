int add(int a, int b) {
  return a + b;
}

int sub(int a, int b) {
  return a - b;
}

String showFunc(int a, int b) {
  return 'The sum of $a and $b is ${add(a, b)}\n The differnce between $a and $b is ${sub(a, b)}';

}

void main() {
  print(showFunc(10, 5));
}