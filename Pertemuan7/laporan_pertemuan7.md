# Modul 7

---

#### NIM : 2241720095

#### Nama   : Ana Bellatus Mustaqfiro

#### Kelas   : D4 TI - 3F

#### No. Urut  : 04

#### Mata Kuliah  : Pemrograman Mobile (7 | Manajemen Plugin)

---

## Praktikum 1 - Menerapkan Plugin di  Project Flutter

**Langkah 1 - Buat project baru**
![Langkah 1](./assets/01.png)

**Langkah 2 - Menambahkan Plugin**
![Langkah 2](./assets/02.png)

**Langkah 3 - Buat file red_text_widget.dart**

**red_text_widget.dart**
```dart
import 'package:flutter/material.dart';

class RedTextWidget extends StatelessWidget {
  const RedTextWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
```

**Langkah 4 - Tambah Widget AutoSizeText**

**red_text_widget.dart**
```dart
class RedTextWidget extends StatelessWidget {
  const RedTextWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AutoSizeText(
      text,
      style: const TextStyle(color: Colors.red, fontSize: 14),
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
    );
  }
}
```
> Error tersebut terjadi karena Widget AutoSizeText belum diimport package nya
> Perbaikan
> ![Perbaikan](./assets/04.png)

**Langkah 5 - Buat Variabel text dan parameter di constructor**

```dart
class RedTextWidget extends StatelessWidget {
  const RedTextWidget({super.key, required this.text});
  final String text;

  //...
  }
```

**Langkah 6 - Tambahkan widget di main.dart**

**main.dart**
```dart
Container(
   color: Colors.yellowAccent,
   width: 50,
   child: const RedTextWidget(
             text: 'You have pushed the button this many times:',
          ),
),
Container(
    color: Colors.greenAccent,
    width: 100,
    child: const Text(
           'You have pushed the button this many times:',
          ),
),
```

Hasil
![Hasil](./assets/03.png)

## Tugas Praktikum

1. Selesaikan Praktikum tersebut, lalu dokumentasikan dan push ke repository Anda berupa screenshot hasil pekerjaan beserta penjelasannya di file README.md!

2. Jelaskan maksud dari langkah 2 pada praktikum tersebut!
> Langkah tersebut digunakan untuk menambahkan plugin "auto_size_text" pada project flutter melalui terminal yang gunanya untuk membuat teks yang dapat secara otomatis menyesuaikan ukurannya pada ruang yang tersedia pada widget.

3. Jelaskan maksud dari langkah 5 pada praktikum tersebut!
> Maksud dari langkah tersebut adalah  untuk membuat variabel text dengan tipe String yang bersifat final artinya tidak bisa diubah, yang nantinya akan digunakan sebagai parameter/injection pada pemanggilan RedTextWidget.

4. Pada langkah 6 terdapat dua widget yang ditambahkan, jelaskan fungsi dan perbedaannya!
> fungsi ditambahkannya dua widget tersebut adalah untuk melakukan perbandingan jika menggunakan widget Text biasa dan RedTextWidget.
> perbedaan dari dua widget tersebut adalah
> 1. Text => menampilkan seluruh isi text sehingga ukuran widgetnya menyesuaikan dengan isi text
> 2. RedTextWidget => menampilkan text sesuai dengan ukuran widget yang telah ditentukan sehingga apabila isi text melebihi ukuran widgetnya maka tidak akan keliatan/tampil

5. Jelaskan maksud dari tiap parameter yang ada di dalam plugin auto_size_text berdasarkan tautan pada dokumentasi ini !
> - Key > untuk mengatur bagaimana suatu widget akan menggantikan widget lain saesuai dengan statenya
> - textKey > untuk mengelola state dari text yang ada pada widget tersebut secara spesifik
> - style > untuk memberi style pada widget sesuai yang diinginkan atau customisasi style pada text tersebut
> - minFontSize > untuk memberikan ukuran minimum yang bisa digunakan ketika melakukan auto-sizing text
> - maxFontSize > untuk memberikan ukuran maksimun yang bisa digunakan ketika melakukan auto-sizing text
> - stepGranularity > untuk mengatur seberapa besar perubahan ukuran font tiap dilakuakn auto-sizing agar pas dengan ruang yang tersedia. Semakin kecil nilai stepGranularity, semakin halus perubahan ukuran teks.
> - presetFontSizes > untuk menentukan ukuran font berapa saja yang bisa digunakan untuk auto-sizing sehingga proses auto-sizing akan menggunakan ukuran yang ada pada list tersebut bukan dengan mengurangi ukuran font secara bertahap.
> - group > untuk membuat sebuah group yang berisi banyak text widget sehingga bisa diberikan style yang sama.
> - textAlign > untuk mengatur posisi text secara horizontal.
> - textDirection > untuk menagtur bagaimana textAlign diimplementasikan.
> - locale > untuk mengatur bagaimana karakter text yang digunakan sesuai dengan pengaturan lokal.
> - softwrap/wrapWords > jika diset ke true, teks akan dibungkus (wrap) secara otomatis jika tidak cukup ruang dalam baris.
> - overflow > untuk mengatur bagaimana teks yang tidak muat dalam area yang ditentukan akan dihandle.
> - overflowReplacement > untuk menyediakan widget alternatif yang akan ditampilkan jika teks overflow .dan tidak dapat ditampilkan dengan cara yang ditentukan oleh parameter overflow.
> - textScaleFactor > untuk mengubah skala ukuran teks secara keseluruhan.
> - maxLines > untuk memberikan nilai maksimal berapa baris dalam sebuah text.
> - semanticsLabel > memberikan label semantik untuk fitur aksesibilitas.
 
6. Kumpulkan laporan praktikum Anda berupa link repository GitHub kepada dosen!
link repo : [Link repo](https://github.com/anabellatus/04_2241720095_pemrograman-mobile-2024/tree/main/Pertemuan7)