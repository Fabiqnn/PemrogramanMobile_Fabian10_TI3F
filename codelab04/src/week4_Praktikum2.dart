void main(List<String> args) {
  // Langkah 1
  var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
  print(halogens);

  // Langkah 3
  var names1 = <String>{};
  Set<String> names2 = {}; // This works, too.
  var names3 = {}; // Creates a map, not a set.

  var name = {'Fabian', 'Hasbillah'};

  names1.addAll(name);
  names1.add('2341720170');
  print(names1);
  print(names2);
  print(names3);
}