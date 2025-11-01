# Tugas Praktikum

## Praktikum 1 : Dasar State dengan Model View

1. Selesaikan langkah-langkah praktikum tersebut, lalu dokumentasikan berupa GIF hasil akhir praktikum beserta penjelasannya di file README.md! Jika Anda menemukan ada yang error atau tidak berjalan dengan baik, silakan diperbaiki  
    ![P1](/codelab10/img_praktikum/hasil_Praktikum1.gif)  

2. Jelaskan maksud dari langkah 4 pada praktikum tersebut! Mengapa dilakukan demikian?  
    Untuk mengelompokkan proses impor, sehingga nantinya ketika aplikasi semakin besar import hanya berasal dari file tersebut.  

3. Mengapa perlu variabel plan di langkah 6 pada praktikum tersebut? Mengapa dibuat konstanta ?  
    plan disana adalah variabel untuk menyimpan data state daftar task yang akan ditampilkan, mengapa bersifat const agar objek plan bersifat imutable, untuk mencegah side effect dan memastikan UI rebuild bekerja dengan baik.  
    Dengan ini untuk menambahkan list task pada plan tidak dilakukan dengan cara menambah list yang ada pada variabel tersebut. Melainkan melakukan copy objek plan sebelumnya ditambah dengan list baru yang kita buat kemudian flutter akan menampilkan plan terbaru ini.    

4. Lakukan capture hasil dari Langkah 9 berupa GIF, kemudian jelaskan apa yang telah Anda buat!  
    ![P1](/codelab10/img_praktikum/hasil_Praktikum1.gif)  
    pada langkah 9 saya membuat method yang akan menampilkan setiap index dari List yang berada di plan.task dalam bentuk baris yang mana berisi checkbox dan text field.  

5. Apa kegunaan method pada Langkah 11 dan 13 dalam lifecyle state ?  
    Langkah 11 kita menginisialisasi event listener scrollController yang mana akan mendeteksi scroll setiap kali kita membuka halaman UI yang terkait. ScrollController berfungsi untuk menutup keyboard ketika mendeteksi scroll pada halaman.    

    Langkah 13 kita mematikan atau menghapus state controller yang kita buat sebelumnya ketika kita menutup halaman. Hal ini dilakukan agar tidak ada kebocoran memori, karena setiap kali kita membuka halaman tersebut maka objek controller baru akan diinisialisasi ulang, sehingga tanpa dispose maka controller akan terduplikasi.  

## Praktikum 2 : InheritedWidget

2. Jelaskan mana yang dimaksud InheritedWidget pada langkah 1 tersebut! Mengapa yang digunakan InheritedNotifier?  
    Inherited widget adalah mekanisme dasar flutter untuk membagikan data ke widget anak.
    Mengapa menggunakan inheritedNotifier karena ValueNotifier akan otomatis memberi tahu widget turunan untuk rebuild, sehingga kita tidak perlu setState manual.  

3. Jelaskan maksud dari method di langkah 3 pada praktikum tersebut! Mengapa dilakukan demikian?  
    Method-method tersebut mengembalikan jumlah todo-list yang sudah kita selesaikan dan pesan berupa perbandingan tugas selesai dibanding total tugas.  

4. ![Percobaan 2](/codelab10/img_praktikum/percobaan%202.gif)  

## Praktikum 3 : 