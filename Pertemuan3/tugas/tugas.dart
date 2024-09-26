void main() {
  String namaLengkap = 'Ana Bellatus Mustaqfiro';
  String nim = '2241720095';

  for (int i = 2; i <= 201; i++) {
    bool isBilanganPrima = true;

    for (int j = 2; j <= i ~/ 2; j++) {
      if (i % j == 0) {
        isBilanganPrima = false;
        break;
      }
    }

    if (isBilanganPrima) {
      print('$i adalah bilangan prima. $namaLengkap, $nim');
    }
  }
}
