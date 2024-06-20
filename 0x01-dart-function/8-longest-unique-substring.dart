String longestUniqueSubstring(String str) {
  int n = str.length;
  int start = 0;
  int maxLength = 0;
  int startMax = 0;
  Map<String, int> charIndex = {};

  for (int end = 0; end < n; end++) {
    if (charIndex.containsKey(str[end]) && charIndex[str[end]]! >= start) {
      start = charIndex[str[end]]! + 1;
    }
    charIndex[str[end]] = end;
    if (end - start + 1 > maxLength) {
      maxLength = end - start + 1;
      startMax = start;
    }
  }
  return str.substring(startMax, startMax + maxLength);
}

void main() {
  print(longestUniqueSubstring("abcacbd"));
  print(longestUniqueSubstring("aaaaaaaa"));
  print(longestUniqueSubstring("abcde"));
}

