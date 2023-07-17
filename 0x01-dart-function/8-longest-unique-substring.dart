String longestUniqueSubstring(String str) {
    int maxLength = 0;
    String longestSubstring = '';
    String currentSubstring = '';

    for (int i = 0; i < str.length; i++) {
        int index = currentSubstring.indexOf(str[i]);

        if (index != -1) {
            currentSubstring = currentSubstring.substring(index + 1);
        }

        currentSubstring += str[i];

        if (currentSubstring.length > maxLength) {
            maxLength = currentSubstring.length;
            longestSubstring = currentSubstring;
        }
    }

    return longestSubstring;
}