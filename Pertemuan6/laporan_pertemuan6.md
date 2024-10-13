# Modul 5

---

#### NIM : 2241720095

#### Nama   : Ana Bellatus Mustaqfiro

#### Kelas   : D4 TI - 3F

#### No. Urut  : 04

#### Mata Kuliah  : Pemrograman Mobile (6 | Layout dan Navigasi)

---

## Praktikum 1 - Membangun Layout di Flutter

**Langkah 1**
Membuat project baru dengan nama layout_flutter
![Langkah 1](./assets/01.png)

**Langkah 2**
Buka file lib/main.dart lalu ganti dengan kode berikut
```
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Layout: Ana Bellatus Mustaqfiro 2241720095',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Layout: Ana Bellatus Mustaqfiro 2241720095'),
        ),
        body: const Center(
          child: Text('Hello World'),
        ),
      ),
    );
  }
}
```

**Langkah 4**
Implementasi title row

```
@override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            /* soal 1*/
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /* soal 2*/
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: const Text(
                    'Wisata Gunung di Batu',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  'Batu, Malang, Indonesia',
                  style: TextStyle(color: Colors.grey[500]),
                ),
              ],
            ),
          ),
          /* soal 3*/
          Icon(
            Icons.star,
            color: Colors.red[500],
          ),
          const Text('41'),
        ],
      ),
    );

    return MaterialApp(
      title: 'Flutter Layout: Ana Bellatus Mustaqfiro 2241720095',
      home: Scaffold(
          appBar: AppBar(
            title: const Text(
                'Flutter Layout: Ana Bellatus Mustaqfiro 2241720095'),
          ),
          body: Column(
            children: [
              titleSection,
            ],
          )),
    );
  }
```

**Hasil**
![Hasil](./assets/02.png)

## Praktikum 2 - Implementasi Button Row

**Langkah 1**
Buat method Column _buildButtonColumn

```
Column _buildButtonColumn(Color color, IconData icon, String label) {
  return Column(
    mainAxisSize: MainAxisSize.min,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Icon(icon, color: color),
      Container(
        margin: const EdgeInsets.only(top: 8),
        child: Text(
          label,
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w400,
            color: color,
          ),
        ),
      ),
    ],
  );
}
```

**Langkah 2**
Buat widget buttonSection

```
@override
  Widget build(BuildContext context) {
    Color color = Theme.of(context).primaryColor;
    //...

    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(color, Icons.call, 'CALL'),
        _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
        _buildButtonColumn(color, Icons.share, 'SHARE'),
      ],
    );

    //...
  }
```

**Langkah 3**
Tambah button section ke body

```
@override
  Widget build(BuildContext context) {
    //...

    return MaterialApp(
      title: 'Flutter Layout: Ana Bellatus Mustaqfiro 2241720095',
      home: Scaffold(
          appBar: AppBar(
            title: const Text(
                'Flutter Layout: Ana Bellatus Mustaqfiro 2241720095'),
          ),
          body: Column(
            children: [
              titleSection,
              buttonSection,
            ],
          )),
    );
  }
```

**Hasil**
![Hasil](./assets/03.png)

## Praktikum 3 - Implementasi text section

**Langkah 1**
Buat widget textsection

```
@override
  Widget build(BuildContext context) {
    //...
    Widget textSection = Container(
      padding: const EdgeInsets.all(32),
      child: const Text(
        'Kota Batu di Malang, Jawa Timur, menawarkan destinasi wisata yang beragam, mulai dari budaya, alam hingga spot foto yang kekinian. Salah satu destinasi kekinian yang baru di kota tersebut adalah Taman Langit Gunung Banyak. Wisata spot foto yang dibuka sejak 2017 ini berlokasi di Dusun Brau, Desa Gunungsari, Kecamatan Bumiaji, tepatnya di dalam kawasan Gunung Banyak. Pengunjung yang datang bisa berswafoto dan bersantai ria sembari menikmati udara sejuk.',
        softWrap: true,
      ),
    );
    //...
  }
```

**Langkah 2**
Tambahkan variabel tex section ke body

```
@override
  Widget build(BuildContext context) {
    //...

    return MaterialApp(
      title: 'Flutter Layout: Ana Bellatus Mustaqfiro 2241720095',
      home: Scaffold(
          appBar: AppBar(
            title: const Text(
                'Flutter Layout: Ana Bellatus Mustaqfiro 2241720095'),
          ),
          body: Column(
            children: [
              titleSection,
              buttonSection,
              textSection,
            ],
          )),
    );
  }
```

![Langkah 1](./assets/04.png)

## Praktikum 4 - Implementasi image section

**Langkah 1**
Siapkan asset gambar
![Langkah 1](./assets/05.png)

**Langkah 2**
Tambahkan gambar ke body

```
return MaterialApp(
      title: 'Flutter Layout: Ana Bellatus Mustaqfiro 2241720095',
      home: Scaffold(
          appBar: AppBar(
            title: const Text(
                'Flutter Layout: Ana Bellatus Mustaqfiro 2241720095'),
          ),
          body: Column(
            children: [
              Image.asset(
                'images/taman-langit.png',
                width: 600,
                height: 240,
                fit: BoxFit.cover,
              ),
              titleSection,
              buttonSection,
              textSection,
            ],
          )),
    );
```

**Langkah 3**
ubah menjadi Listview

```
return MaterialApp(
      title: 'Flutter Layout: Ana Bellatus Mustaqfiro 2241720095',
      home: Scaffold(
          appBar: AppBar(
            title: const Text(
                'Flutter Layout: Ana Bellatus Mustaqfiro 2241720095'),
          ),
          body: ListView(
            children: [
              Image.asset(
                'images/taman-langit.png',
                width: 600,
                height: 240,
                fit: BoxFit.cover,
              ),
              titleSection,
              buttonSection,
              textSection,
            ],
          )),
    );
```

![Langkah 3](./assets/06.png)