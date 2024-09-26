void main() {
  //Langkah 1
  var list = [1, 2, 3];
  var list2 = [0, ...list];
  print(list);
  print(list2);
  print(list2.length);

  //Langkah 3
  var listInfo = ['Ana Bellatus M', '2241720095'];

  List<int?> list1 = [1, 2, null];
  print(list1);
  var list3 = [0, ...?list1, ...listInfo];
  print(list3);
  print(list3.length);

  //Langkah 4
  var promoActive = false;
  var nav = ['Home', 'Furniture', 'Plants', if (promoActive) 'Outlet'];
  print(nav);

  //Langkah 5
  var login = 'Staff';
  var nav2 = [ 'Home', 'Furniture', 'Plants', if (login case 'Manager') 'Inventory'
  ];
  print(nav2);

  //Langkah 6
  var listOfInts = [1, 2, 3];
  var listOfStrings = ['#0', for (var i in listOfInts) '#$i'];
  assert(listOfStrings[1] == '#1');
  print(listOfStrings);
}
