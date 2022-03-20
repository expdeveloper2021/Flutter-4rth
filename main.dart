import 'dart:io';

bool isPrime(N) {
  for (var i = 2; i <= N / i; ++i) {
    if (N % i == 0) {
      return false;
    }
  }
  return true;
}

void main() {
  // task 2
  List a = [1, 4, 9, 16, 25, 36, 49, 64, 81, 100];
  List evenNums = [];
  for (var i = 0; i < a.length; i++) {
    if (a[i] % 2 == 0) {
      evenNums.add(a[i]);
    }
  }
  print(evenNums);

  // task 3
  print('Enter N');
  var number = int.parse(stdin.readLineSync()!);
  if (isPrime(number)) {
    print('$number is a prime number.');
  } else {
    print('$number is not a prime number.');
  }

  // task 4
  for (var i = 0; i <= 15; i++) {
    print('7x$i = ${7 * i}');
  }

  // task 5
  List fruits = ["apple", "banana", "mango", "orange", "strawberry"];
  for (var i = 0; i < fruits.length; i++) {
    print('item ${fruits[i]}');
  }

  // task 7
  print("Enter celcius");
  var celciusNumber = int.parse(stdin.readLineSync()!);
  print("$celciusNumber celcuis to farnheit ==> ${celciusNumber * 9 / 5 + 32}");

  print("Enter Farnheit");
  var farnheitNumber = int.parse(stdin.readLineSync()!);
  print(
      "$farnheitNumber celcuis to farnheit ==> ${(farnheitNumber - 32) * 5 / 9}");

  // task 8
  var firstNumber = int.parse(stdin.readLineSync()!);
  var secondNumber = int.parse(stdin.readLineSync()!);
  var operation = stdin.readLineSync();
  if (operation == "+" ||
      operation == "-" ||
      operation == "*" ||
      operation == "/" ||
      operation == "%") {
    if (operation == "+") {
      print("$firstNumber + $secondNumber ==> ${firstNumber + secondNumber}");
    } else if (operation == "-") {
      print("$firstNumber - $secondNumber ==> ${firstNumber - secondNumber}");
    } else if (operation == "*") {
      print("$firstNumber * $secondNumber ==> ${firstNumber * secondNumber}");
    } else if (operation == "/") {
      print("$firstNumber / $secondNumber ==> ${firstNumber / secondNumber}");
    } else {
      print("$firstNumber % $secondNumber ==> ${firstNumber % secondNumber}");
    }
  } else {
    print("enter a valid operation please!");
  }

  // task 9 - I tried but not working :()
  // var character = stdin.readLineSync();
  // var vowels = "aeiouAEIOU";
  // if (vowels.contains(character)) {
  //   print("it's vowel");
  // }

  // task 10
  var toReverse = "natsikaP nawaJ";
  var reversed = toReverse.split("").reversed.join();
  print(reversed);

  // task 11
  List allNames = [
    "Ahmed",
    "Bilal",
    "Muhammad",
    "Owais",
    "Muhammad",
    "Ali",
    "Ahmed"
  ];
  var uniqueNumbers = allNames.toSet().toList();
  print(uniqueNumbers);

  List<int> allNumbers = [
    1,
    2,
    3,
    4,
    5,
    18,
    19,
    23,
    29,
    32,
    34,
    35,
    38,
    39,
    41,
    42,
    45,
    44,
    47,
    49,
    51,
    52,
    56,
    58,
    60,
    62,
    65,
    67,
    69,
    70,
    80,
    85,
    88,
    92,
    99,
    100
  ];
  List missingNumbers = [];
  for (int num in allNumbers) {
    if (allNumbers.contains(num + 1) == false && allNumbers.last != num) {
      missingNumbers.add(num + 1);
    }
  }
  print("missing values are $missingNumbers");

  // task 13
  List<int> unsorted = [10, 6, 8, 9, 5, 1, 2];
  unsorted.sort();
  print(unsorted.first);
  print(unsorted.last);
}
