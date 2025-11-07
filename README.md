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
