void main() {
   var numbers = [3, 9, 1, 6, 4, 2, 8, 5, 7];
  int largest = numbers[0]; // Initialize the largest variable with the first element of the list

  for (int i = 1; i < numbers.length; i++) {
    if (numbers[i] > largest) {
      largest = numbers[i];
    }
  }

  print('Largest element: $largest');
}
