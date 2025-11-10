# TUgas Praktikum - Codelab 11

## Praktikum 1

2. ![Soal 2](/codelab11/img/soal2.png)
 
3. `result = value.body.toString().substring(0, 450);`    
    `value.body` = response JSON mentah dari Google Books API  
    `.toString()` = mengubah ke string (meskipun sebenarnya sudah string)  
    `.substring(0, 450)` = memotong string dari indeks 0 sampai 449  
    ![Soal 3](/codelab11/img/w11_soal3.gif)  

4.  **Langkah 1** membuat method dengan jenis future yang akan mengembalikan nilai 1, 2, dan 3 setelah delay yang tertera yaitu 3 detik.  

    **Langkah 2** merupakan method count yang didalamnya memanggil 3 method yang dibuat sebelumnya, dengan menginisialisasikan variabel total bertipe int yang nantinya di increment dengan hasil 3 method dari langkah 1. Sehingga akan mengembalikan nilai 6 dengan total delay 9 detik.  
    ![Soal 4](/codelab11/img/w11_soal4.gif) 

5. Langkah 2 membuat method future yang akan diselesaikan secara manual setelah 5 detik.  
    ![Soal 5](/codelab11/img/w11_soal5.gif)

6. Versi baru hanya menambahkan try–catch, sehingga jika terjadi error (misalnya completer.complete dipanggil dua kali), future akan diselesaikan dengan completeError alih-alih melempar exception ke atas.  
    ![Soal 6](/codelab11/img/w11_soal5.gif)

7. ![Soal 7](/codelab11/img/W11_soal7.gif)

8.  - FutureGroup = lebih fleksibel untuk future yang
    ditambahkan secara bertahap/dinamis.  
    - Future.wait = lebih sederhana dan tepat untuk kumpulan future statis seperti contohmu.

9. ![Soal 9](/codelab11/img/W11_soal9.gif)

10. Dengan adanya handleError(), error dieksekusi dua kali, ditangani dua kali, dan state UI/print dieksekusi dua kali. Tanpa handleError(), error hanya muncul sekali dan alur lebih mudah diprediksi.

11. ![Soal 12](/codelab11/img/W11_soal12.gif)

12. Perbedaan yang benar-benar terlihat oleh pengguna:  
    - Teks yang ditampilkan berubah (format rapi vs .toString() bawaan Position).  
    - Transisi UI bisa sedikit berbeda karena FutureBuilder melakukan rebuild bertahap.  
    - Perbedaan di balik layar (yang memengaruhi UI secara tidak langsung):  
    - Versi lama menggunakan setState manual, versi baru menggunakan FutureBuilder.  
    - FutureBuilder lebih reaktif terhadap perubahan state future.  
    - Variabel myPosition tidak lagi digunakan, tetapi masih menentukan UI awal.  
    ![Soal 13](/codelab11/img/W11_soal12.gif)

13. Pada kondisi normal, UI tidak berubah sama sekali dibanding sebelumnya.
Pada kondisi error, UI sekarang menampilkan pesan “Something terrible happened!”, yang sebelumnya tidak muncul.
Jadi perubahan UI hanya terjadi ketika future gagal, bukan ketika sukses.

14. 