# Tugas Praktikum Minggu ke-6

## Praktikum 1
![P1](img/praktikum1.png)
  
## Praktikum 2
![P2](img/praktikum2.png)

## Praktikum 3
![P3](img/praktikum3.png)

## Praktikum 4
![P4](img/praktikum4.gif)

## Soal Praktikum 
1. Silakan implementasikan di project baru "basic_layout_flutter" dengan mengakses sumber ini: https://docs.flutter.dev/codelabs/layout-basics  
    ![S1](img/soal1.gif)

## Praktikum 5
![P5](img/praktikum5.gif)

## Soal Praktikum 2
1. Untuk melakukan pengiriman data ke halaman berikutnya, cukup menambahkan informasi arguments pada penggunaan Navigator. Perbarui kode pada bagian Navigator menjadi seperti berikut.  
    ```
    Navigator.pushNamed(context, '/item', arguments: item);
    ```
    ![S2_1](img/soal2_1.png)
2. Pembacaan nilai yang dikirimkan pada halaman sebelumnya dapat dilakukan menggunakan ModalRoute. Tambahkan kode berikut pada blok fungsi build dalam halaman ItemPage. Setelah nilai didapatkan, anda dapat menggunakannya seperti penggunaan variabel pada umumnya. (https://docs.flutter.dev/cookbook/navigation/navigate-with-arguments)  
    ```
    final itemArgs = ModalRoute.of(context)!.settings.arguments as Item;
    ```
    ![S2_2](img/soal2_2.png)
3. Pada hasil akhir dari aplikasi belanja yang telah anda selesaikan, tambahkan atribut foto produk, stok, dan rating. Ubahlah tampilan menjadi GridView seperti di aplikasi marketplace pada umumnya.  
    ![S2_3](img/soal2_3.png)
4. Silakan implementasikan Hero widget pada aplikasi belanja Anda dengan mempelajari dari sumber ini: https://docs.flutter.dev/cookbook/navigation/hero-animations  
    ![S2_4](img/soal2_4.gif)
5. Sesuaikan dan modifikasi tampilan sehingga menjadi aplikasi yang menarik. Selain itu, pecah widget menjadi kode yang lebih kecil. Tambahkan Nama dan NIM di footer aplikasi belanja Anda.  
    ![S2_5](img/soal2_5.gif)
6. Selesaikan Praktikum 5: Navigasi dan Rute tersebut. Cobalah modifikasi menggunakan plugin go_router, lalu dokumentasikan dan push ke repository Anda berupa screenshot setiap hasil pekerjaan beserta penjelasannya di file README.md. Kumpulkan link commit repository GitHub Anda kepada dosen yang telah disepakati!  
    ![S2_6](img/soal2_6.gif)
