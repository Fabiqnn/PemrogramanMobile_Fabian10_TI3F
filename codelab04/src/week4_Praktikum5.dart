void main(List<String> args) {
  // var record = ('first', a: 2, b: true, 'last');
  // print(record);

  // (int, int) tukar((int, int) record) {
  //   var (a, b) = record;
  //   return (b, a);
  // }
  // var angka = (1, 2);
  // var changed = tukar(angka);
  // print(changed);

  // Record type annotation in a variable declaration:
  // (String, int) mahasiswa = ("Fabian Hasbilah", 2341720170);
  // print(mahasiswa);

  var mahasiswa2 = ('first', a: 2341720170, b: "Fabian Hasbillah", 'last');

  print(mahasiswa2.$1); // Prints 'first'
  print(mahasiswa2.a); // Prints 2
  print(mahasiswa2.b); // Prints true
  print(mahasiswa2.$2); // Prints 'last'
}