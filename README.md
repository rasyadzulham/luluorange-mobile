# luluorange_mobile

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

Comprehensive explanation of every assignment👇🏻

<details>
<summary>Tugas 7</summary>
  
## Widget tree🌲

Widget tree adalah struktur hierarki (pohon) yang menggambarkan bagaimana widget-widget saling berhubungan dan tersusun untuk membentuk antarmuka pengguna (UI) di Flutter. Setiap tampilan di flutter adalah hasil susunan widget yang tersusun seperti cabang-cabang pohon. Widget tree dibentuk oleh parent widget dan parent child. Widget parent berada diatas dan membungkus widget child sehingga parent dapat mengatur tampilan, posisi, dan perilaku childnya. Sementara itu, child akan menampilkan konten aktual (teks, gambar, tombol, ikon, dsb). Child selalu mengikuti aturan dari parent. Parent tidak tahu detail internal child, hanya tahu ukurannya atau tampilannya. Setiap widget dapat menjadi parent (mempunyai anak) atau child (bagian dari parents).

## Widget yang dipakai dalam project ini🏔

1. Material app, digunakan untuk membuat aplikasi dengan desain Material Design milik Google. Biasanya menjadi root widget dari aplikasi Flutter.
2. Scaffold, menyediakan struktur dasar halaman: ada AppBar, Body, Drawer, FloatingActionButton, dll.
3. Appbar, bagian atas halaman (top bar) yang biasa berisi judul atau tombol navigasi.
4. Padding, memberikan jarak (ruang kosong) di sekeliling widget child-nya.
5. Column, menyusun widget secara vertikal (atas ke bawah).
6. Row, menyusun widget secara horizontal (kiri ke kanan).
7. InfoCard (custom widget), widget yang mengextends StatelessWidget untuk menampilkan kartu berisi judul dan isi.
8. ItemCard (custom widget), widget buatan kamu untuk menampilkan setiap menu (ikon + nama + warna).
9. SizedBox, widget sederhana untuk memberikan jarak kosong antar elemen.
10. Center, menempatkan child di tengah parent-nya.
11. GridView.count, menampilkan widget dalam bentuk grid (tabel).
12. SnackBar, pesan kecil muncul di bawah layar (biasanya sebagai notifikasi cepat).
13. Text, digunakan untuk menampilkan teks pada aplikasi

## MaterialApp💻

MaterialApp adalah widget utama dalam Flutter yang berfungsi sebagai kerangka dasar aplikasi berbasis Material Design, yaitu sistem desain yang dikembangkan oleh Google. Widget ini biasanya ditempatkan sebagai root widget karena menyediakan seluruh fondasi yang dibutuhkan aplikasi agar dapat berjalan dengan baik. Melalui MaterialApp, pengembang dapat mengatur berbagai aspek penting seperti tema global, warna, navigasi antarhalaman, hingga sistem bahasa dan format lokal.

Selain itu, MaterialApp juga menjadi wadah bagi widget-widget lain seperti Scaffold, AppBar, SnackBar, dan FloatingActionButton, agar dapat bekerja sesuai gaya Material Design. Tanpa MaterialApp, widget tersebut tidak akan memiliki konteks desain material yang diperlukan, bahkan bisa menyebabkan error seperti “No Material widget found”.

Widget ini juga menyediakan sistem navigator untuk berpindah antarhalaman menggunakan push() dan pop(), serta mendukung pengaturan rute melalui properti routes. Dengan MaterialApp, pengembang dapat dengan mudah mengontrol tampilan global aplikasi melalui ThemeData, sehingga warna, teks, dan gaya dari semua komponen akan konsisten di seluruh halaman.

Secara singkat, MaterialApp ibarat pondasi utama sebuah rumah dalam arsitektur Flutter. Tanpanya, berbagai elemen seperti ruangan (Scaffold) dan perabot (Widget) tidak akan memiliki tempat dan gaya visual yang sesuai. Karena perannya yang begitu penting dalam memberikan struktur, navigasi, dan tampilan yang konsisten, MaterialApp hampir selalu digunakan sebagai widget root pada setiap aplikasi Flutter.

## Stateless widget vs stateful widget⭐️
Stateless widget bersifat immutable. Ketika sudah dirender, semuanya fixed tidak bisa diubah. Jika ingin mengupdate widget tersebut, maka harus membuang widget yang sedang ditampilkan dan menggantinya dengan widget baru. Berbeda halnya dengan stateful widget, widget ini dapat dianalogikan sebagai papan tulis yang akan selalu ada, tetapi kontennya dapat berubah-ubah. Analogi tersebut sejalan dengan prinsip stateful widget dimana elemen yang telah dirender dapat berubah dikarenakan suatu event, misalnya seperti interaksi pengguna, network operations, dan OS based events. 

Stateless widget cocok digunakan untuk UI yang hanya bergantung pada data yang tidak berubah setelah widget dibuat. Contoh kasusnya yaitu ketika menampilkan teks statis atau data dari parent yang tidak akan berubah. Stateful widget cocok digunakan ketika UI perlu berubah karena ada interaksi pengguna, data dinamis, atau perubahan status. Contoh kasusnya yaitu ketika ada tombol yang menambah angka (counter), form input di mana teks berubah sesuai dengan input yang user ketik, UI yang menampilkan data dari API, dll.

## BuildContext
Build context adalah objek yang menunjukkan posisi widget dalam widget tree. Fungsi utamanya yaitu menghubungkan widget ke ancestor-nya untuk mengambil data (tema, navigasi, ukuran, dll). BuildContext digunakan sebagai parameter wajib dalam metode build() dan dapat diibaratkan sebagai alamat yang menunjukkan lokasi widget di dalam struktur aplikasi Flutter. Tanpa BuildContext, widget tidak dapat berinteraksi atau mengambil informasi dari lingkungan sekitarnya.

## Hot reload vs hot restart
Aplikasi flutter membutuhkan waktu saat pertama kali dijalankan. Supaya hal tersebut tidak terjadi setiap kita melakukan perubahan pada project, maka ada fitur hot reload dan hot restart. 

Hot reload merupakan cara yang termudah dan tercepat dalam menerapkan perubahan dalam aplikasi. Untuk melakukan hot reload, kita hanya perlu menekan cmd+s, kemudian dalam waktu kurang lebih satu detik perubahan sudah diterapkan. Hot reload memiliki kelebihan yaitu menyimpan state aplikasi sebelumnya. MIsalnya terdapat form dalam aplikasi dan kita telah mengisi form tersebut. Setelah melakukan hot reload, isi dari form tersebut akan dipertahankan. Namun, hot reload tidak bisa digunakan ketika aplikasi sudah dihentikan.  

Hot restart memiliki fungsionalitas yang sedikit berbeda dibandingkan hot reload. Hot restart lebih seperti full restart aplikasi flutter tetapi lebih cepat. Hot reload akan menghapus state dari aplikasi dan kode akan dicompile kembali sehingga aplikasi akan mulai dari state default. Hot restart membutuhkan waktu lebih lama dari hot reload tetapi lebih cepat dari fungsi full restart.
</details>

<details>
<summary>Tugas 8</summary>

## Navigator.push() vs Navigator.pushReplacement()🖐🏻

Navigator.push() menambahkan suatu route ke dalam stack route yang dikelola oleh Navigator. Method ini menyebabkan route yang ditambahkan berada pada paling atas stack, sehingga route yang baru saja ditambahkan tersebut akan muncul dan ditampilkan kepada pengguna. Sedangkan navigator.pushReplacement() menghapus route yang sedang ditampilkan kepada pengguna dan menggantinya dengan suatu route. Method ini menyebabkan aplikasi untuk berpindah dari route yang sedang ditampilkan kepada pengguna ke suatu route yang diberikan. Pada stack route yang dikelola Navigator, route lama pada atas stack akan digantikan secara langsung oleh route baru yang diberikan tanpa mengubah kondisi elemen stack yang berada di bawahnya. Jadi, push() akan menumpuk route yang sudah ada, sehingga bisa di back ke ke route yang sudah ada sebelumnya. Di sisi lain, pushReplacement() mengganti route yang sudah ada dengan route baru secara langsung. Contoh pengaplikasian method Navigator.push() adalah ketika melihat detail dari produk, maka user bisa kembali ke homepage. Contoh pengaplikasian method Navigator.pushReplacement() adalah ketika user telah login dan akan diarahkan ke homepage. Apabila user sudah diarahkan ke homepage, maka tidak dapat kembali lagi ke halaman login.


## Widget hierarchy⽊

Dalam Flutter, hierarki widget seperti Scaffold, AppBar, dan Drawer dimanfaatkan untuk membangun struktur halaman yang konsisten di seluruh aplikasi dengan menyediakan kerangka tata letak yang seragam. Scaffold berperan sebagai wadah utama yang menampung elemen-elemen umum seperti AppBar di bagian atas untuk menampilkan judul atau tombol navigasi, serta Drawer di sisi samping untuk navigasi antarhalaman. Dengan menempatkan ketiga widget ini secara konsisten di setiap halaman, pengembang dapat menjaga keseragaman tampilan, memudahkan pengguna bernavigasi, dan mempercepat proses pengembangan karena komponen yang sering digunakan dapat dibuat sebagai widget terpisah dan digunakan kembali di seluruh aplikasi.

## Kelebihan menggunakan layout widget📐
Dalam konteks desain antarmuka, penggunaan layout widget seperti Padding, SingleChildScrollView, dan ListView memberikan kelebihan penting dalam menampilkan elemen-elemen form agar lebih rapi, responsif, dan mudah digunakan. Padding membantu menjaga jarak antar elemen sehingga tampilan form terlihat bersih dan nyaman dibaca, SingleChildScrollView memungkinkan seluruh form dapat digulir ketika kontennya lebih panjang dari layar sehingga mencegah overflow, sedangkan ListView memudahkan penataan elemen form dalam daftar yang bisa di-scroll secara efisien dengan performa yang baik. Kombinasi ketiganya membuat form tampil proporsional di berbagai ukuran layar serta meningkatkan pengalaman pengguna dengan tata letak yang terstruktur dan responsif.

Contoh penggunaan Padding dan SingleChildScrollView:

``` dart
...
body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:[
              // === Product name ===
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "Name",
                    labelText: "Name",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                  onChanged: (String? value) {
                    setState(() {
                      _name = value!;
                    });
                  },
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return "Nama produk tidak boleh kosong!";
                    }
                    return null;
                  },
                ),
              ),
            ],
          ),
        ),
      )
...
```

Contoh Penggunaan ListView pada drawer:
```dart
...
return Drawer(
      child: ListView(
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Color(0xFFFFA726),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Luluorange',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontStyle: FontStyle.italic,
                  ),
                ),
                Padding(padding: EdgeInsets.all(10)),
                Text("Your number one sporty clothes and apparels!",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                      fontWeight: FontWeight.normal,
                    )
                ),
              ],
            ),
          ),
...
```

## Menyesuaikan warna tema🎨

Untuk menyesuaikan tema aplikasi secara konsisten, saya set primary color dan secondary color di file main.dart widget MyApp sebagai berikut.

``` dart
...
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Luluorange',
      theme: ThemeData(
        colorScheme: ColorScheme.light(primary: Color(0xFFFFA726)) // ganti warna sesuai tema aplikasi
        .copyWith(secondary: Colors.blueAccent[400]),
      ),
      home: MyHomePage(),
    );
  }
}
...
```
</details>


<details>
<summary>Tugas 9</summary>

## Peran model saat mengirim/mengambil data JSON⭐️

Membuat model Dart saat mengambil atau mengirim data JSON itu penting karena model membantu kita menjaga struktur data tetap jelas dan konsisten. Kalau kita langsung memakai Map<String, dynamic>, kita tidak punya keamanan tipe yang kuat, sehingga data bisa saja punya tipe yang salah tanpa kita sadari dan baru ketahuan ketika aplikasi sudah berjalan, yang tentu lebih berbahaya. Dengan model, kita juga bisa memanfaatkan null-safety, jadi kita tahu mana data yang wajib ada dan mana yang boleh kosong. Selain itu, penggunaan model membuat kode lebih mudah dirawat dan dibaca, terutama saat aplikasi makin besar atau ketika API berubah. Tanpa model, kode akan mudah berantakan karena kita harus mengakses key JSON di banyak tempat, yang rawan typo dan error. Jadi, model bukan hanya soal rapih, tapi juga soal mencegah bug dan mempermudah pengembangan ke depannya.

## http vs CookieRequest🍪

Dalam konteks tugas ini, package http dan CookieRequest sama-sama digunakan untuk melakukan komunikasi dengan server, tetapi keduanya punya peran yang berbeda.

Package http berfungsi untuk melakukan request sederhana ke server—seperti GET, POST, PUT, dan DELETE—tanpa menyimpan informasi sesi atau login. Jadi setiap kali kita mengirim request menggunakan http, server menganggap kita sebagai pengguna baru karena tidak ada cookie atau data sesi yang ikut dikirim. Package ini cocok untuk request biasa yang tidak membutuhkan autentikasi atau penyimpanan state.

Sementara itu, CookieRequest (biasanya dari package pbp_django_auth) dibuat khusus untuk menangani autentikasi pengguna dan penyimpanan cookie session Django. Artinya, ketika kita login menggunakan CookieRequest, cookie yang diberikan server akan disimpan, dan setiap request berikutnya secara otomatis membawa cookie tersebut. Dengan begitu, server bisa mengenali kita sebagai user yang sudah login. Ini berguna untuk fitur seperti melihat data profil, membuat postingan, atau mengakses halaman yang butuh login.

Jadi, http menangani request biasa, tidak menyimpan cookie, tidak tahu status login. Sedangkan CookieRequest menangani request yang butuh autentikasi, menyimpan cookie session, dan mempertahankan status login di server.

Karena itulah di tugas ini http biasanya dipakai untuk fetch data umum, sedangkan CookieRequest dipakai untuk proses login dan request yang membutuhkan sesi yang berkelanjutan.

## instance CookieRequest🥨

Instance CookieRequest perlu dibagikan ke semua komponen dalam aplikasi Flutter karena objek ini menyimpan informasi sesi pengguna, seperti cookie autentikasi dan status login. Kalau setiap widget membuat instance CookieRequest sendiri, maka cookie yang disimpan tidak akan sama, sehingga server tidak bisa mengenali bahwa itu adalah pengguna yang sudah login. Akibatnya, fitur yang membutuhkan autentikasi seperti mengambil data user, membuat data baru, atau mengakses endpoint yang dilindungi tidak akan bekerja dengan benar. Dengan membagikan satu instance CookieRequest ke seluruh aplikasi (biasanya lewat Provider), semua halaman dan widget bisa memakai cookie yang sama secara konsisten. Hal ini memastikan bahwa status login tetap terjaga, user tidak perlu login berulang kali, dan interaksi dengan server menjadi lebih stabil dan teratur di seluruh aplikasi.

## Konfigurasi konektivitas yang diperlukan agar Flutter dapat berkomunikasi dengan Django👋🏻

Agar Flutter bisa berkomunikasi dengan Django, ada beberapa pengaturan penting yang harus dilakukan di kedua sisi. Pertama, kita perlu menambahkan 10.0.2.2 ke ALLOWED_HOSTS karena emulator Android tidak bisa langsung mengakses localhost, sehingga Django harus diizinkan menerima request dari alamat khusus tersebut. Lalu, kita juga harus mengaktifkan CORS supaya Django mengizinkan request dari aplikasi Flutter yang dianggap berasal dari origin berbeda. Selain itu, pengaturan cookie seperti SameSite dan konfigurasi session juga perlu disesuaikan agar cookie autentikasi bisa dikirim dan dipakai oleh Flutter, terutama untuk fitur login. Di sisi Android, kita wajib menambahkan izin akses internet karena tanpa izin tersebut aplikasi Flutter tidak bisa melakukan HTTP request sama sekali. Kalau salah satu dari konfigurasi ini tidak dilakukan dengan benar, aplikasi bisa mengalami berbagai masalah seperti request ditolak, cookie tidak terbaca, login tidak bekerja, hingga Flutter sama sekali tidak bisa terhubung ke server Django.

## Mekanisme pengiriman data pada flutter📨

Mekanisme pengiriman data dari input sampai akhirnya bisa ditampilkan di Flutter sebenarnya mengikuti alur yang cukup teratur. Secara sederhana, prosesnya berjalan seperti ini. Pertama, pengguna memasukkan data melalui form di aplikasi Flutter, misalnya lewat TextField atau komponen input lainnya. Ketika pengguna menekan tombol submit, Flutter akan mengirim data tersebut ke server Django melalui HTTP request (biasanya POST), menggunakan http atau CookieRequest jika butuh autentikasi. Data ini dikirim dalam format JSON agar bisa diproses oleh Django dengan mudah.

Di sisi Django, server menerima request tersebut dan memprosesnya melalui view atau endpoint API. Django akan membaca data JSON, melakukan validasi, lalu menyimpan data itu ke database jika semuanya valid. Setelah data berhasil disimpan, Django biasanya mengembalikan response berupa JSON juga, yang berisi informasi apakah penyimpanan berhasil, serta data yang sudah tersimpan.

Setelah Flutter menerima response JSON dari Django, data tersebut akan di-decode menjadi objek Dart atau dimasukkan ke dalam model. Kemudian state aplikasi diperbarui, misalnya dengan setState, Provider, atau state management lainnya. Begitu state berubah, Flutter otomatis melakukan rebuild pada widget yang membutuhkan data tersebut, sehingga data yang baru dimasukkan bisa langsung muncul di layar. Dengan cara ini, data mengalir dari input pengguna → dikirim ke server → disimpan → dikembalikan lagi → dan akhirnya ditampilkan ke pengguna secara real-time.

## Mekanisme register, login, logout🔐

Proses dimulai ketika pengguna memasukkan data akun pada form login atau register di Flutter, seperti email, username, atau password. Setelah tombol submit ditekan, Flutter mengirim data tersebut ke server Django melalui request POST, biasanya memakai CookieRequest agar Django dapat mengirim kembali cookie session. Di sisi Django, request ini diterima oleh view autentikasi. Untuk register, Django akan membuat akun baru dan menyimpan datanya di database. Untuk login, Django akan memverifikasi username dan password yang dikirim, dan jika cocok, Django membuat session untuk pengguna tersebut dan mengirimkan cookie session kembali kepada Flutter.

Flutter kemudian menerima response dari Django, termasuk cookie session yang secara otomatis disimpan oleh CookieRequest. Cookie ini penting karena digunakan untuk menandai bahwa pengguna sudah login, sehingga setiap request selanjutnya akan dianggap berasal dari pengguna yang sudah terautentikasi. Setelah login berhasil, state di Flutter diperbarui untuk menampilkan menu atau halaman utama yang hanya bisa diakses pengguna yang sudah login. Sedangkan untuk logout, Flutter cukup mengirim request logout ke Django. Django akan menghapus session pengguna, dan Flutter menghapus cookie yang tersimpan sehingga status login hilang. Setelah itu, Flutter kembali menampilkan halaman login. Dengan alur ini, proses autentikasi berjalan secara teratur mulai dari input, verifikasi di server, penyimpanan session, hingga perubahan tampilan di aplikasi.

## Cara implementasi checklist step by step✅

### Backend (Django)

1. Buat aplikasi baru di django bernama authentication

2. Tambahkan authentication ke installed apps di settings.py

3. Install library corsheader untuk mengizinkan request dari app flutter, masukkan variabel tambahan untuk CORS, tambahkan middleware untuk CORS ke settings.py

4. Tambahkan allowed host 10.0.2.2 di settings.py

5. Buat API authentication yang menghandle login, register, logout. Tambahkan juga endpoint di urls.py

6. Untuk mengintegrasikan data, buat endpoint proxy_image untuk mengatasi masalah CORS di main/views.py

7. Untuk mengintegrasikan form, buat endpoint create_product_flutter di main/views.py

8. Buat endpoint yang menghandle filter product berdasarkan user yang sudah login di main/views.py

### Frontend (flutter)

1. Install library provider dan package pbp_django_auth

2. Modifikasi root widget agar dapat menyediakan CookieRequest library ke semua child widget menggunakan Provider (main.dart)

3. Buat screen login.dart dan register.dart pada folder lib/screens yang ketika melakukan login atau register mengunjungi endpoint yang sudah dibuat di django

4. Membuat model baru pada lib/models menggunakan quicktype dengan cara memasukkan JSON dari API yang sudah dibuat sebelumnya

5. Tambahkan package HTTP

6. Pada file android/app/src/main/AndroidManifest.xml tambahkan <uses-permission android:name="android.permission.INTERNET" /> untuk memperbolehkan akses Internet pada aplikasi Flutter

7. Buat widget baru di lib/widgets dengan nama product_entry_card.dart yang akan menampilkan preview setiap produk (dengan seluruh atribut dari produk). Gunakan endpoint proxy_image yang sudah dibuat untuk menampilkan thumbnail

8. Buat screen baru di lib/screens dengan nama product_entry_list.dart yang akan menampilkan list produk dalam bentuk card. Pengambilan data menggunakan endpoint yang sesuai dengan user. Apabila user ingin melihat semua produk, maka endpoint yang digunakan adalah /json. Jika user hanya ingin melihat produknya, maka gunakan /my-product-json. Tambahkan screen ini ke left drawer juga

9. Agar tombol di halaman utama dapat berfungsi untuk melihat produk, tambahkan if else pada onTap product_card.dart

10. Buat screen baru di lib/screens dengan nama product_detail.dart yang menampilkan seluruh atribut dari produk secara lengkap

11. Tambah event handler ke product_entry_card.dart sehingga ketika onTap akan muncul halaman detail sesuai dengan id product tersebut.

12. Hubungkan product_form.dart denagn CookieRequest dalam metode build dengan menambahkan final request = context.watch<CookieRequest>(); dan ubah onPress agar data pada form di encode menjadi JSON lalu dikirimkan ke server django

13. Untuk fungsi logout, saya menaruhnya pada left_drawer.dart, tambahkan final request = context.watch<CookieRequest>(); pada method buildnya lalu buat ListTile baru untuk logout dan pada onTap, Gunakan async yang akan mengunjungi endpoint logout pada django


[![Build Status](https://app.bitrise.io/app/22ef8ea9-0f20-42d0-b222-0d63605a1611/status.svg?token=07ZfmgeaGmA8EexxebXUVw&branch=master)](https://app.bitrise.io/app/22ef8ea9-0f20-42d0-b222-0d63605a1611)

Download aplikasi versi terbaru: [Downlaoad APK](https://app.bitrise.io/app/22ef8ea9-0f20-42d0-b222-0d63605a1611/installable-artifacts/eb1a3c8b2dada158/public-install-page/f939ca202e6106991b3a345a44c75bb0)

</details>
