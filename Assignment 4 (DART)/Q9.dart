void main() {
  String write = "Hello, World!";
  int vowel = 0;

  for (int i = 0; i < write.length; i++) {
    var number = write[i];
      if (number == 'a' || number == 'e' || number == 'i' || number == 'o' || number == 'u') {
      vowel++;
    }
  }

  print("Number of vowels in the string: $vowel");
}
