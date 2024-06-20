String longestPalindrome(String s) {
  if (s.length < 2) return "none";
  
  int start = 0;
  int maxLength = 0;

  for (int i = 0; i < s.length; i++) {
    int len1 = expandAroundCenter(s, i, i);
    int len2 = expandAroundCenter(s, i, i + 1);
    int len = len1 > len2 ? len1 : len2;

    if (len > maxLength) {
      start = i - (len - 1) ~/ 2;
      maxLength = len;
    }
  }

  return maxLength > 2 ? s.substring(start, start + maxLength) : "none";
}

int expandAroundCenter(String s, int left, int right) {
  while (left >= 0 && right < s.length && s[left] == s[right]) {
    left--;
    right++;
  }
  return right - left - 1;
}
