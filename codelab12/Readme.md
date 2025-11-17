# Soal Praktikum
1. ![Soal 1](/codelab12/img/image.png)  

2. ![Soal 2](/codelab12/img/image2.png)  

3. `yield*` berfungsi untuk mendelegasikan ke fungsi generator lain atau yang dapat diulang, yang secara efektif menggabungkan seluruh urutan nilainya ke dalam keluaran generator saat ini.  

4. ![Soal 3](/codelab12/img/W12_soal3.gif)

5. perbedaannya adalah await for akan menunggu stream di close baru kemudian menjalankan kode yang ada di bawahnya, sedangkan listen dilakukan hampir bersamaan listen tidak menunggu apapun.

6.  Langkah 8  
    -  Membuat objek NumberStream
    - Mengambil controller dari NumberStream
    - Mengambil stream dari controller
    - Mendaftarkan data ke listner  
    Langkah 10
    - Memasukkan data angka random ke stream

7. Menambahkan fungsi add error dan handling error handling error dilakukan jika terdapat error maka set angka menjadi -1.

8. ![Soal 8](/codelab12/img/W12_soal8.gif)

9. ![soal 9](/codelab12/img/image3.png)

10. Muncul error stream has already been listened to karena mencoba untuk mendengar stream yang sama dua kali, default stream merupakan single-subscription. Sehingga agar dapat membuat banyak listener kita perlu broadcast.

11. ![soal 11](/codelab12/img/W12_soal11.gif)

12. ![soal 12](/codelab12/img/W12_soal12.gif)
    - Langkah 3
        `getNumbers()` adalah stream generator yang menghasilkan data berulang  
        `async*` artinya fungsi ini menghasilkan event stream  
        `yield*` melemparkan semua event dari stream lain ke stream ini, semua angka yang dihasilkan oleh `Stream.periodic` langsung diteruskan ke getNumbers()  
    - Langkah 7
        Widget yang otomatis rebuild setiap kali stream mengirim event  

13. Inti dari praktikum ini adalah mengajarkan pola BLoC sederhana dengan memisahkan arsitektur UI dengan logic, menggunakan sink dan stream sebagai dasar alurnya  
    ![Soal 13](/codelab12/img/W12_soal%2013.gif)