void main() {
  //Langkah 1
  var gifts = {
    // Key:    Value
    'first': 'partridge',
    'second': 'turtledoves',
    'fifth': 1
  };

  var nobleGases = {
    2: 'helium',
    10: 'neon',
    18: 2,
  };

  print(gifts);
  print(nobleGases);

  //Langkah 3
  var mhs1 = Map<String, String>();
  gifts['first'] = 'partridge';
  gifts['second'] = 'turtledoves';
  gifts['fifth'] = 'golden rings';
  gifts['nama'] = 'Ana Bellatus M';
  gifts['nim'] = '2241720095';

  mhs1['nama'] = 'Ana Bellatus M';
  mhs1['nim'] = '2241720095';

  var mhs2 = Map<int, String>();
  nobleGases[2] = 'helium';
  nobleGases[10] = 'neon';
  nobleGases[18] = 'argon';
  nobleGases[20] = 'Ana Bellatus M';
  nobleGases[24] = '2241720095';

  mhs2[1] = 'Ana Bellatus M';
  mhs2[2] = '2241720095';

  print(gifts);
  print(nobleGases);
  print(mhs1);
  print(mhs2);
}
