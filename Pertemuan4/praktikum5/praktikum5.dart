void main() {
  //Langkah 1
  var record = ('first', a: 2, b: true, 'last');
  print(record);

  //Langkah 3
  var hasil = tukar((1, 3));
  print(hasil);

  //Langkah 4
  (String, int) mahasiswa;
  mahasiswa = ('Ana Bellatus M.', 2241720095);
  print(mahasiswa);

  //Langkah 5
  var mahasiswa2 = ('Ana Bellatus M. 2241720095', a: 2, b: true, 'last');

  print(mahasiswa2.$1);
  print(mahasiswa2.a);
  print(mahasiswa2.b);
  print(mahasiswa2.$2);
}

(int, int) tukar((int, int) record) {
  var (a, b) = record;
  return (b, a);
}
