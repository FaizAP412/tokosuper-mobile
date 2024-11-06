# Tugas 7

1. Jelaskan apa yang dimaksud dengan stateless widget dan stateful widget, dan jelaskan perbedaan dari keduanya.
    
    **Stateless Widget** adalah widget yang tidak memiliki keadaan (state) yang berubah saat dijalankan. Contohnya adalah `Text`, `Icon`, atau `IconButton`, digunakan untuk menampilkan informasi yang tidak berubah.

    **Stateful Widget** adalah widget yang memiliki keadaan yang dapat berubah saat dijalankan. Contohnya adalah `Checkbox`, `Radio`, atau `TextField`. Mereka digunakan ketika UI perlu diperbarui berdasarkan interaksi pengguna atau perubahan data.

    **Perbedaan**:

    - **Stateful Widget** dapat berubah dan memperbarui UI-nya menggunakan setState(), sedangkan **Stateless Widget** tidak dapat berubah setelah di-*build*.

    - **Stateful Widget** memiliki objek `State` yang akan mengelola pembaharuan pada UI, sementarra  **Stateless Widget** tidak memiliki objek `State`.

2. Sebutkan widget apa saja yang kamu gunakan pada proyek ini dan jelaskan fungsinya.

    1.  `Text` : digunakan untuk menampilkan teks.
    2.  `Icon` : digunakan untuk menampilkan ikon.
    3.  `Appbar` : digunakan untuk menampilkan menu dan judul aplikasi.
    4.  `Padding` : digunakan untuk memberikan jarak pada widget.
    5.  `Column` : digunakan untuk menampilkan widget secara vertikal.
    6.   `Row` : digunakan untuk menampilkan widget secara horizontal.
    7.  `InfoCard` : digunakan untuk  menampilkan informasi dalam bentuk kartu.
    8.  `SizedBox` : digunakan untuk memberikan ukuran pada widget.
    9.  `GridView` : digunakan untuk  menampilkan widget dalam bentuk grid.
    10. `Card` : digunakan untuk menampilkan informasi dalam bentuk kartu
    11. `InkWell` : digunakan untuk menampilkan efek setelah mengklik pada widget.
3. Apa fungsi dari setState()? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut.

    `setState()` digunakan dalam Stateful Widget untuk memberi tahu Flutter bahwa keadaan widget telah berubah dan perlu *build* ulang UI. Saat `setState()` dipanggil, Flutter akan menjalankan metode `build()` kembali untuk menampilkan perubahan pada UI.

    **Variabel yang dipengaruh**:

    Variabel yang dideklarasikan dalam kelas    `State` dan digunakan dalam metode `build()` akan terpengaruh. Misalnya, jika ada variabel yang menyimpan nilai checkbox, mengubah nilai tersebut di dalam `setState()` akan memperbarui tampilan checkbox di UI.

4. Jelaskan perbedaan antara const dengan final.

    - `const`:
        1. `const` digunakan untuk mendefinisikan variabel yang nilainya tidak dapat berubah atau konstan.
        2. `const` harus dideklarasikan pada saat pembuatan variabel.

        ```
        const int angka = 10;
        const Widget myWidget = Text('Hello');
        ```

    -  `final`:
        1. `final` digunakan untuk mendefinisikan variabel yang nilainya tidak dapat berubah setelah pembuatan variabel.
        2. digunakan untuk menandai nilai yang hanya dapat diatur sekali.
        3. cocok digunakan untuk nilai yang tidak diketahui saat kompilasi

        ```
        final DateTime sekarang = DateTime.now();   
        final Widget myWidget = Icon(Icons.star);
        ```
5. Jelaskan bagaimana cara kamu mengimplementasikan checklist-checklist di atas.

    - Membuat aplikasi Flutter baru dengan menggunakan perintah `flutter create tokosuper`.
    - Mengimport library yang dibutuhkan
    - Membuat file `menu.dart` untuk menampilkan layout homepage.
    - Membuat widget yang dibutuhkan  seperti `InfoCard` dan `GridView` untuk menampilkan tombol.
    - Menambahkan `Snackbar` untuk menampilkan tulisan sesuai dengan tombol yang diklik
