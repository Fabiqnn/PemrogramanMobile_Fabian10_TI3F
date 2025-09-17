void main(List<String> args) {
  // Langkah 1 
  var list = [1,2,3];
  assert(list.length == 3);
  assert(list[1] == 2);
  print(list.length);
  print(list[1]);

  list[1] = 1;
  assert(list[1] == 1);
  print(list[1]);

  // Langkah 2
  final List<String?> list1 = List.filled(5, null);
  list1[1] = "Fabian Hasbillah";
  list1[2] = "2341720170";
  for (var i in list1) print(i);
}