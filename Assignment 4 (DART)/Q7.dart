void main() {
  int n = 4; 
  for (int i = 1; i <= n; i++) {
    // Print spaces for formatting
    for (int j = n; j > i; j--) {
      print(' ');
    }

    for (int k = 1; k <= i; k++) {
      print(i);
    }

    print('');
  }
}
