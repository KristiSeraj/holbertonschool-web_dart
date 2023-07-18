import '9-palindrome.dart';

String longestPalindrome(String s) {
    int start = 0;
    int end = 0;

    if (s.length < 2) {
        return s;
    }

    for (int i = 0; i < s.length; i++) {
        int len1 = expand(s, i, i);
        int len2 = expand(s, i, i + 1);

        int maxLen = len1 > len2 ? len1 : len2;

        if (maxLen > end - start) {
            start = i - (maxLen - 1) ~/ 2;
            end = i + maxLen ~/ 2;
        }
    }

    if (isPalindrome(s.substring(start, end + 1)) == false) {
        return 'none';
    }

    return s.substring(start, end + 1);
}

int expand(String s, int left, int right) {
    while (left >= 0 && right < s.length && s[left] == s[right]) {
        left--;
        right++;
    }

    return right - left - 1;
}