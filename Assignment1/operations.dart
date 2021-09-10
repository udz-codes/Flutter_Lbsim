import 'dart:io';

// Arithmatic Operations
void arithmetic(n1,n2) {
  print("\n-> Arithmatic Operations\n");
    print("Addition\n\t$n1 + $n2 = ${n1+n2}");
    print("Subtraction\n\t$n1 - $n2 = ${n1-n2}");
    print("Multiplication\n\t$n1 * $n2 = ${n1*n2}");
    print("Division\n\t$n1 / $n2 = ${n1/n2}");
    print("Modulus\n\t$n1 % $n2 = ${n1%n2}");
}

// Relational Operations
void relational(n1,n2) {
  print("\n-> Relational Operations\n");
    print("Greater than:\n\t$n1 > $n2 = ${n1 > n2}");
    print("Less than:\n\t$n1 < $n2 = ${n1 < n2}");
    print("Greater than equal to:\n\t$n1 >= $n2 = ${n1 >= n2}");
    print("Less than equal to:\n\t$n1 <= $n2 = ${n1 <= n2}");
    print("Equal to:\n\t$n1 == $n2 = ${n1 == n2}");
    print("Not equal to:\n\t$n1 != $n2 = ${n1 != n2}");
}

// Assignment Operators
void assignment(n1,n2) {
  print("\n-> Assignment Operator\n");
    int n3 = n1+n2;
    print("Equal to:\n\tn3 = $n1+$n2\n\tn3: ${n3}");
}

// Type testing operators
void testing(n1, n2) {
  print("\n-> Type testing operations\n");
    print("Is:\n\t$n1 is int = ${n1 is int}");
    print("Is not:\n\t$n1 is! int = ${n1 is! int}");
}

// Bitwise Operators
void bitwise(n1, n2) {
  print("\n-> Bitwise Operators\n");
    print("Bitwise AND:\n\t$n1 & $n2 = ${n1 & n2}");
    print("Bitwise OR:\n\t$n1 | $n2 = ${n1 | n2}");
    print("Bitwise XOR:\n\t$n1 ^ $n2 = ${n1 ^ n2}");
    print("Bitwise NOT:\n\t~$n1 = ${ ~n1 }");
    print("Left Shift:\n\t$n1 << $n2 = ${n1 << n2}");
    print("Right Shift:\n\t$n1 >> $n2 = ${n1 >> n2}");
}

// Logical Operators
void logical(n1, n2) {
  print("\n-> Logical Operators\n");
    print("And operation:\n\t$n1 > $n2 && $n1 < $n2 = ${n1 > n2 && n1 < n2}");
    print("Or operation:\n\t$n1 > $n2 || $n1 < $n2 = ${n1 > n2 || n1 < n2}");
    print("Not operation (!):\n\t!($n1 > $n2 || $n1 < $n2) = ${!(n1 > n2 || n1 < n2)}");
}

// Conditional Operators
void conditional(n1, n2) {
  print("\n-> Conditional Operator\n");
    print("condition ? expression if true : expression if false\n\t$n1 > $n2 ? print('true') : print('false')");
    n1 > n2 ? print("\tOutput: true") : print('\tOutput: false');
}

void main() {
  int n1 = 5, n2 = 10;
  bool flag = true;
  late int ch;
  
  while(flag) {
    print("\n");
    print(r"""
MENU:
1. Arithmetic Operators
2. Relational Operators
3. Assignment Operators
4. Testing Operators
5. Bitwise Operators
6. Logical Operators
7. Conditional Operators
8. Exit
    """
    );

    stdout.write("Choice: ");
    ch = int.parse(stdin.readLineSync()!);

    switch (ch) {
      case 1:
        arithmetic(n1, n2);
        break;
      case 2:
        relational(n1, n2);
        break;
      case 3:
        assignment(n1, n2);
        break;
      case 4:
        testing(n1, n2);
        break;
      case 5:
        bitwise(n1, n2);
        break;
      case 6:
        logical(n1, n2);
        break;
      case 7:
        conditional(n1, n2);
        break;
      case 8:
        flag = false;
        break;
      default:
        print("Wrong input!! Try again :)");
    }
  }
}