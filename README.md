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

# Tugas 8
 1. Apa kegunaan const di Flutter? Jelaskan apa keuntungan ketika menggunakan const pada kode Flutter. Kapan sebaiknya kita menggunakan const, dan kapan sebaiknya tidak digunakan?

    `const` di Flutter digunakan untuk mendeklarasikan nilai-nilai konstan yang tidak berubah selama runtime. Keuntungan utamanya adalah efisiensi memori dan performa, karena nilai-nilai konstan dihitung saat kompilasi dan objek `const` hanya dibuat sekali dan dapat digunakan kembali. Gunakan `const` untuk widget statis dan nilai tetap. Hindari `const` jika nilai atau objek perlu berubah selama runtime.

 2. Jelaskan dan bandingkan penggunaan Column dan Row pada Flutter. Berikan contoh implementasi dari masing-masing layout widget ini!

    `Column` dan `Row` adalah widget layout di Flutter yang digunakan untuk mengatur tata letak anak-anak widget secara vertikal dan horizontal. `Column` menempatkan anak-anak widget dalam satu kolom vertikal, sedangkan `Row` menempatkan anak-anak widget dalam satu baris horizontal.

    Contoh implementasi `Column`:
    ```
    Column(
        children: <Widget>[
            Text('Item 1'),
            Text('Item 2'),
            Text('Item 3'),
        ],
    )
    ```

    Contoh implementasi `Row`:
    ```
    Row(
        children: <Widget>[
            Text('Item 1'),
            Text('Item 2'),
            Text('Item 3'),
        ],
    )
    ```
 3. Sebutkan apa saja elemen input yang kamu gunakan pada halaman form yang kamu buat pada tugas kali ini. Apakah terdapat elemen input Flutter lain yang tidak kamu gunakan pada tugas ini? Jelaskan!

    Pada halaman form yang saya buat, elemen input yang digunakan antara lain:
    - `TextField` untuk input teks.

    Elemen input Flutter lain yang tidak saya gunakan pada tugas ini termasuk:
    - `Slider` untuk memilih nilai dari rentang tertentu.
    - `Switch` untuk memilih antara dua status (on/off).
    - `DatePicker` untuk memilih tanggal.
    - `TimePicker` untuk memilih waktu.
    - `DropdownButton` untuk memilih opsi dari daftar.
    - `Checkbox` untuk memilih opsi biner.
    - `Radio` untuk memilih satu opsi dari beberapa pilihan.

    Elemen-elemen ini tidak digunakan karena tidak sesuai dengan kebutuhan form yang saya buat. Namun, mereka dapat digunakan dalam situasi yang memerlukan input spesifik seperti memilih tanggal atau waktu, atau mengatur nilai dalam rentang tertentu.

 4. Bagaimana cara kamu mengatur tema (theme) dalam aplikasi Flutter agar aplikasi yang dibuat konsisten? Apakah kamu mengimplementasikan tema pada aplikasi yang kamu buat?

    Untuk mengatur tema dalam aplikasi Flutter agar konsisten, saya menggunakan `ThemeData` di dalam `MaterialApp`. `ThemeData` memungkinkan kita untuk mendefinisikan warna, font, dan gaya visual lainnya yang akan diterapkan secara konsisten di seluruh aplikasi.

    Contoh implementasi tema:
    ```
    MaterialApp(
        theme: ThemeData(
            primarySwatch: Colors.blue,
            textTheme: TextTheme(
            bodyText1: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            bodyText2: TextStyle(fontSize: 16.0),
            ),
        ),
        home: MyHomePage(),
    );
    ```

 5. Bagaimana cara kamu menangani navigasi dalam aplikasi dengan banyak halaman pada Flutter?

    Untuk menangani navigate dalam aplikasi dengan banyak halaman pada flutter, kita bisa menggunakan `Navigator` dan `Route`
    
    Contoh implementasi `Navigator`
    ```
    // Navigasi ke halaman baru
    Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => HalamanBaru()),
    );

    // Kembali ke halaman sebelumnya
    Navigator.pop(context);
    ```

    Contoh implementasi `Route`
    ```
    MaterialApp(
        initialRoute: '/',
        routes: {
            '/': (context) => HalamanUtama(),
            '/halamanBaru': (context) => HalamanBaru(),
        },
        );

    // Navigasi menggunakan named route
    Navigator.pushNamed(context, '/halamanBaru');
    ```

# Tugas 9

1. Jelaskan mengapa kita perlu membuat model untuk melakukan pengambilan ataupun pengiriman data JSON? Apakah akan terjadi error jika kita tidak membuat model terlebih dahulu?

    Membuat model untuk pengambilan atau pengiriman data JSON penting karena model membantu dalam memetakan struktur data JSON ke dalam objek Dart. Ini memudahkan pengelolaan data, validasi, dan manipulasi. Tanpa model, kita harus mengelola data secara manual, yang rentan terhadap kesalahan dan membuat kode sulit dibaca dan dipelihara. Meskipun tidak selalu menyebabkan error, tidak menggunakan model dapat meningkatkan risiko bug dan inkonsistensi data.

    Model digunakan untuk mengambil dan mengirimkan data JSON, model akan membantu untuk memetakan struktur data JSON ke dalam objek Dart, ini akan memudahkan pengelolaan data, validasi, dan manipulasi. Jika tidak menggunakan model, maka kita harus mengelola data secara manual, yang rentan terhadap kesalahan dan membuat kode sulit untuk dikelola. Meskipun tidak selalu menyebabkan error, tidak menggunakan model dapat meningkatkan risiko bug dan inkonsistensi data.

2. Jelaskan fungsi dari library http yang sudah kamu implementasikan pada tugas ini

    Library `http` digunakan untuk melakukan permintaan HTTP seperti GET, POST, PUT, dan DELETE. Ini memungkinkan aplikasi Flutter untuk berkomunikasi dengan server, mengambil data dari API, dan mengirim data ke server. Library ini menyediakan cara yang mudah dan efisien untuk menangani permintaan jaringan dalam aplikasi Flutter.

3. Jelaskan fungsi dari CookieRequest dan jelaskan mengapa instance CookieRequest perlu untuk dibagikan ke semua komponen di aplikasi Flutter.

    `CookieRequest` adalah kelas yang digunakan untuk mengirimkan cookie bersama dengan permintaan HTTP. CookieRequest digunakan untuk menyimpan cookie yang diperlukan untuk autentikasi atau penggunaan lainnya.

4. Jelaskan mekanisme pengiriman data mulai dari input hingga dapat ditampilkan pada Flutter.

    Mekanisme pengiriman data dilakukan ketika pengguna melakukan input pada form flutter. Data yang diinput kemudian dikonversi menjadi JSON dan dikirim ke server menggunakan permintaan HTTP (misalnya, POST). Server menerima data, memprosesnya, dan mengirimkan respons kembali dalam format JSON. Aplikasi Flutter menerima respons ini, menguraikan JSON menjadi objek.

5. Jelaskan mekanisme autentikasi dari login, register, hingga logout. Mulai dari input data akun pada Flutter ke Django hingga selesainya proses autentikasi oleh Django dan tampilnya menu pada Flutter.

    Autentikasi digunkaan dimulai ketika pengguna memasukkan data akun (username dan password) pada halaman login di flutter. Kemudian, data ini dikirim ke server Django untuk memverifikasi kredensial dan, jika valid, mengirimkan respons yang berisi token atau cookie sesi. Setelah itu, Flutter menyimpan token atau cookie untuk melakukan permintaan berikutnya. Saat logout, flutter akan mengirimkan permintaan logout ke Django, dan sesi pegguna akan dihapus. Setelah autentikasi berhasil, Flutter akan menampilkan menu atau halaman login.

5. Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step! (bukan hanya sekadar mengikuti tutorial).

    - Menambahkan aplikasi baru pada Django yang bernama `authentication` serta membuat fungsi untuk melakukan login, logout, register.
    - Mengkonfigurasi aplikasi untuk menggunakan autentikasi dengan menggunakan `django.contrib.auth`.
    - Membuat model `ProductEntry` untuk bisa menerima data JSON yang dikirim oleh Django
    - Menambahkan library `http` untuk melakukan permintaan HTTP, `provider` untuk mengelola state, dan `pbp_django_auth` untuk mengelola autentikasi.
    - Membuat halaman login, logout, register dengan menggunakan `provider` untuk mengelola state.
    - Menggunakan `http` untuk mengirimkan data ke server Django dan menerima respons.
    - Mmebuat halaman daftar produk untuk menampilkan data yang diterima dari server Django.
    - Mengkonfigurasi halaman form untuk bisa mengirimkan data JSON.
