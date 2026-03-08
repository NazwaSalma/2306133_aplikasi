<img width="1919" height="992" alt="image" src="https://github.com/user-attachments/assets/22c0a807-acfb-4d73-82f9-7fbe99b5d515" />

Aplikasi ini merupakan aplikasi sederhana berbasis Flutter yang menampilkan artikel berita wisata tentang Gunung Bromo serta menyediakan bagian komentar dari pengguna.
Aplikasi ini dibuat untuk latihan penggunaan widget dasar Flutter seperti MaterialApp, Scaffold, AppBar, Column, Row, dan Card.

Identitas
1. Nama: Nazwa Mutia Salma
2. NIM: 2306133
3. Mata Kuliah: Praktikum Pemrograman Mobile
4. Repository: 2306133_aplikasi

Deskripsi Aplikasi
Aplikasi ini menampilkan halaman artikel yang berisi:
1. Judul artikel wisata
2. Gambar destinasi wisata
3. Deskripsi singkat tentang tempat wisata
4. Daftar komentar dari pengguna
   
📌Tampilan Aplikasi
Halaman utama menampilkan:
1. AppBar dengan judul Artikel Berita Terkini
2. Artikel wisata Gunung Bromo
3. Gambar wisata
4. Deskripsi artikel
5. Bagian Komentar pengguna

Teknologi
1. Flutter
2. Dart
3. Git & GitHub

📂 Struktur Utama
lib/
 └── main.dart
File utama aplikasi berada di lib/main.dart.

Penjelasan Singkat Kode
1. Import Library : import 'package:flutter/material.dart';
   (Digunakan untuk mengakses widget Material Design seperti AppBar, Card, Text, dan lainnya)
2. Fungsi Main : void main() {
   runApp(HomePage());
} (Fungsi main() adalah titik awal program Flutter yang menjalankan widget utama yaitu HomePage)
3. Widget Utama : class HomePage extends StatelessWidget {
   (HomePage adalah widget utama aplikasi yang menggunakan StatelessWidget karena tampilan tidak berubah secara dinamis)
4. Struktur Aplikasi :
   MaterialApp → kerangka dasar aplikasi Flutter, Scaffold → struktur halaman seperti AppBar dan Body
5. AppBar : Digunakan untuk menampilkan judul aplikasi di bagian atas
6. Scroll Halaman : body: SingleChildScrollView(
   (Digunakan agar halaman dapat di-scroll jika kontennya panjang)
7. Layout Konten : Column digunakan untuk menyusun widget secara vertikal, Text untuk menampilkan judul dan deskripsi     Image.network untuk menampilkan gambar dari internet

▶️ Cara Menjalankan
Untuk Web:
flutter run 
dan ketikan 2 untuk menggunakan chrome

📌 Kesimpulan
Aplikasi ini merupakan implementasi dasar Flutter yang menampilkan teks dinamis menggunakan variabel dan layout sederhana. Project ini menjadi fondasi untuk pengembangan aplikasi yang lebih kompleks.
