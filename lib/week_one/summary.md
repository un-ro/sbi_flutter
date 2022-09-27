# Flutter: Basic & Introduction

**Nama**: Unero Bhagaskara Ramadan M  
**Kelas**: Sekolah Beta Intensif Flutter

## Overview

**Flutter** merupakan *Software Development Kit* (SDK) yang dikembangkan oleh Google, yang dibuat untuk membantu pengembangan aplikasi *multi-platform*. Flutter menggunakan bahasa pemrograman **Dart**, sampai versi saat ini yaitu versi 3.3.1. Flutter dapat digunakan untuk mengembangkan aplikasi pada platform: **Android, iOS, Web, bahkan Desktop**.

## Keunggulan

- Hot Reload  
  Dalam pengembangan, tampilan pada perangkat dapat berubah tanpa melakukan *build* ulang.
- Cross Platform  
  **Flutter** dapat digunakan untuk banyak platform.
- Less Code  
  **Flutter** tidak memerlukan banyak baris kode jika dibandingkan dengan *Native*
- Widget Catalog  
  Tersedia banyak *template* komponen tampilan yang tersedia, sehingga pengembang tidak memerlukan waktu lama untuk medesain.

## IDE pada Flutter

IDE atau *Code Editor* untuk membantu pengembangan aplikasi menggunakan Flutter, antara lain:

1. Visual Studio Code
2. Android Studio
3. Intelij IDEA
4. XCode (Khusus Mac)

## Dart

Karena Flutter menggunakan bahasa pemrograman **Dart**, maka kita sebagai pengembang perlu mengetahui bagaimana **Dart** ditulis:

Dalam **Dart** ada 2 tipe variable, yaitu *mutable* dan *immutable*. *mutable* merupakan variable yang dapat diubah sedangkan *immutable* tidak bisa diubah setelah deklarasi. Dengan contoh penulisan

```Dart
/*
 Contoh pembuatan Variabel
 tipe_data nama_variable = nilai_variable
*/

// Contoh Mutable
String name = "John";
name = "John Doe";

// Contoh Immutable
final String name = "John";
const double phi = 3.14;

name = "John Doe" // Akan error, karena variabel bersifat immutable
```

## Widget

> Everthing is a Widget

Merupakan *quote* yang menjadi slogan penggunaan Flutter. Pada Flutter, setiap komponen tampilan pada Flutter merupakan **Widget**, dan setiap widget memiliki 2 tipe, yaitu:

1. *Stateless*  
   Komponen yang dari awal sampai akhir akan sama.
2. *Stateful*  
   Komponen yang dapat berubah sesuai dengan data / *event*.

Selain itu, terdapat beberapa **Widget** yang sering digunakan, antara lain:

1. *Container*
2. *Row*
3. *Column*
4. *Image*
5. *Text*
6. *Icon*
7. *Scaffold*
8. *AppBar*
