void main() {
  List<int> numbers = [5, 2, 9, 1, 7, 4];

  int? maxNumber = numbers.isNotEmpty ? numbers[0] : null;
  int? minNumber = numbers.isNotEmpty ? numbers[0] : null;

  for (int i = 1; i < numbers.length; i++) {
    if (numbers[i] > maxNumber!) {
      maxNumber = numbers[i];
    }

    if (numbers[i] < minNumber!) {
      minNumber = numbers[i];
    }
  }

  if (maxNumber != null && minNumber != null) {
    print("Maximum Number: $maxNumber");
    print("Minimum Number: $minNumber");
  } else {
    print("The list is empty.");
  }
}
