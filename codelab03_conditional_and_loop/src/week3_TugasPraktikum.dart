void main(List<String> args) {
  String nama = "Fabian Hasbillah";
  String nim = "2341720170";

  for (int i = 0; i < 201; i++) {
    if (isPrime(i)) print("Angka Prima : $i | Nama : $nama | Nim : ($nim)");
    print(i);
  }
}

  bool isPrime(int n) {
    if (n < 2) return false;
    for (int i = 2; i * i <= n; i++) {
      if (n % i == 0) return false;
    }
    return true;
  }