import 'dart:io';

void main(List<String> arguments) {


  int age = acquireAge();
  print(calculateRemainingYears(age));
  

}

String calculateRemainingYears(int age) {
  return 'You only have ${100 - age} years left before reaching 100.';
}

int acquireAge() {
   stdout.write('This program calculates your remaining years before reaching the age of 100.\nPlease enter your age: ');
   int age = int.parse(stdin.readLineSync());

   while (age > 100) {
    stdout.write('Age is greater than 100. Please try again: ');
    age = int.parse(stdin.readLineSync());
  }

  return age;
}