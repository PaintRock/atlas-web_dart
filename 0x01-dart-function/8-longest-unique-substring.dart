String longestUniqueSubstring(String str) {
  int n = str.length;
  int start = 0;
  int end = 0;
  int maxLength = 0;
  int startMax = 0;
  int endMax = 0;
  Map<String, int> charIndex = {};
  while (end < n) {
    if (charIndex.containsKey(str[end])) {
      start = charIndex[str[end]] + 1;
    }
    charIndex[str[end]] = end;
    if (end - start > maxLength) {
      maxLength = end - start;
      startMax = start;
      endMax = end;
    }
    end++;
  }
  return str.substring(startMax, endMax + 1);
}
