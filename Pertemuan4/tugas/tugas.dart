//No 3
//Optional Positional Parameter
void greet(String name, [int? age]) {
  print('Hello $name, you are ${age ?? 'unknown'} years old.');
}

//Named Parameter
void greeting({required String name, int age = 22}) {
  print('Hello $name, you are $age years old.');
}

//No 4
void sayHello() {
  print('Hello');
}

void executeFunction(Function func) {
  func();
}

void main() {
  // greet('Ana');
  // greeting(name: 'Ana');

  // var helloFunction = sayHello;
  // executeFunction(helloFunction);

  //No 5
  // var numbers = [1, 2, 3, 4];
  // var doubled = numbers.map((num) => num * 2);

  // print(doubled.toList());

  //No 6
  //Lexical Scope
  // int x = 10;// berada di scope main

  // void printX() {
  //   print(x);
  // }

  // printX();

  //Lexical Closure
  var counter = createCounter();

  print(counter());
  print(counter());

    //No 7
  // Map<String, int> result = calculate(10, 5);
  // print('Sum: ${result['sum']}, Difference: ${result['difference']}');
}

// No 6
Function createCounter() {
  int count = 0;

  return () {
    count++;
    return count;
  };
}

// No 7
Map<String, int> calculate(int a, int b) {
  return {
    'sum': a + b,
    'difference': a - b,
  };
}
