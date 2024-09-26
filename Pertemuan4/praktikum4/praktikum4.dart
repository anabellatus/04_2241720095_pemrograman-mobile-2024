void main() {
  var list = [1, 2, 3, null];
  var list2 = [0, ...list];
  print(list);
  print(list2);
  print(list2.length);

  List<int?> list1 = [1, 2, null];
  print(list1);
  var list3 = [0, ...?list];
  print(list3.length);
}
