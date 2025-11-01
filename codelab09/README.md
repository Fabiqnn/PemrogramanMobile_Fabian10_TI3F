# TUGAS PRAKTIKUM

1.  ![P1]()  
    ![P2]()  
2.  ![Join Kamera]()  
3. void async akan mengubah fungsi menjadi fungsi asynchronous, fungsi biasa akan mengembalikan tipe sesuai deklarasinya jika fungsi async akan mengembalikan Future.  Future adalah operasi yang belum selesai sekarang tapi akan selesai di masa depan. Simplenya ini memberikan semacam variabel placeholder yang akan diisi ketika pengambilan nilai tersebut sukses.   Dengan Future kita bisa melakukan proses tanpa menghentikan penggunaan UI yang sedang berjalan  
4. Fungsi @immutable dan @override  
    @override  
    memberitahu compiler bahwa method tersebut bermaksud menggantikan method dari superclass, seperti melakukan "replace" pada isi method dari superclass.    

    @immutable  
    immutable akan memperingatkan kita jika ada variable di dalam method tersebut yang tidak bertipe final, sehingga immutable ini bisa dikatakan sebagai deklaratif peraturan yang melarang kita untuk mendeklarasikan variabel mutable di dalam method tersebut.