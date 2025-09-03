
# Tugas Praktikum



### 2. Mengapa sangat penting untuk memahami bahasa pemrograman Dart sebelum kita   menggunakan framework Flutter ? Jelaskan!

Jawab : Dikarenakan Framework Flutter menggunakan bahasa pemrograman Dart sehingga sangat penting untuk faham atau setidaknya familar dengan bahasa pemrograman Dart.

### 3. Rangkumlah materi dari codelab ini menjadi poin-poin penting yang dapat Anda gunakan untuk membantu proses pengembangan aplikasi mobile menggunakan framework Flutter.

Jawab : 
- Dart adalah salah satu bahasa pemrograman tingkat tinggi. Awalnya dart dirancang untuk pengembangan web dengan tujuan menggantikan javascript, namun sekarang lebih sering digunakan untuk pengembangan mobile.

- Dart merupakan bahasa pemrograman yang sudah support OOP.

- Eksekusi kode dart dapat dibagi menjadi dua cara, yang pertama melalui Dart VM, yang kedua dengan mengubah dart ke js lalu dikompilasi dalam bentuk js.

- Eksekusi Dart dapat beroperasi dalam dua mode, yaitu **Just-In-Time**, dan **Ahead-Of-Time** 

- Cara menulis dart mirip seperti java.

### 4. Buatlah penjelasan dan contoh eksekusi kode tentang perbedaan Null Safety dan Late variabel !

Jawab : 
1. Null Safety memastikan tidak ada variabel yang bernilai Null, kecuali jika kita mengizinkannya, 
```
String name = "Fabian"
name = null // error
```
Kode diatas akan menghasilkan pesan error.
```
String? name = "Fabian"
name = null // Tidak error
```
`String? name` boleh null

2. Late Variable, digunakan untuk menunda inisialisasi variabel sampai pertama kali digunakan.
```
void main() {
  // late variabel (akan diinisialisasi nanti)
  late String description;

  // Deskripsi baru diisi belakangan
  description = "Belajar Dart";
  print(description); // Belajar Dart

  // Jika coba akses sebelum diberi nilai:
  // late String title;
  // print(title); // ❌ Runtime error: LateInitializationError
}
```