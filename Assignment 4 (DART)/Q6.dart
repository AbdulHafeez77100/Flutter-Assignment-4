void main() {

bool isPalindrome(String text) {
  
 return text == text.split('').reversed.join('');
}


String input = "radar";
  
  if (isPalindrome(input)) {
    print('$input is a palindrome.');
  } else {
    print('$input is not a palindrome.');
  }
}
