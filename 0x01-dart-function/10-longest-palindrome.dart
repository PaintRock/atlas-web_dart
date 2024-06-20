String longestPalindrome(String s) {
  int n = s.length;
  int start = 0;
  int end = 0;
  int maxLength = 0;
  int startMax = 0;
  int endMax = 0;
  for (int i = 0; i < n; i++) {
    int len1 = expandAroundCenter(s, i, i);
    int len2 = expandAroundCenter(s, i, i + 1);
    maxLength = len1 > len2 ? len1 : len2;
    if (maxLength > end - start) {
      start = i - (maxLength - 1) ~/ 2;
      end = i + maxLength ~/ 2;
    }
  }
  return s.substring(start, end + 1);
}
