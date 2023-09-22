void main() {
  int n = 7; // Change this to your desired number
  int first = 0, second = 1;

  print("Fibonacci Sequence up to $n:");

  if (n >= 1) {
    print(first); // Print the first Fibonacci number (0)

    if (n >= 2) {
      print(second); // Print the second Fibonacci number (1)

      for (int i = 2; i < n; i++) {
        int next = first + second;
        print(next);
        first = second;
        second = next;
      }
    }
  }
}
