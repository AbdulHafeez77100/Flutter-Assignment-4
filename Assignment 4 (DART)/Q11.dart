void main() {
  List<int> numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9];
  int sumOfSquares = 0;

  for (int number in numbers) {
    if (number % 2 != 0) {
      var number2 = number;
      sumOfSquares += number2 * number;
    }
  }

  print("The sum of the squares of odd numbers in the list is: $sumOfSquares");
}
