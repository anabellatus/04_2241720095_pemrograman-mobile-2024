# Modul 4

---

#### NIM : 2241720095

#### Nama   : Ana Bellatus Mustaqfiro

#### Kelas   : D4 TI - 3F

#### No. Urut  : 04

#### Mata Kuliah  : Pemrograman Mobile (4 |  Pengantar Bahasa Pemrograman Dart - Bagian 3)

---

## Praktikum 1 - Eksperimen Tipe Data List

**Langkah 1**

```
void main() {
  var list = [1, 2, 3];
  assert(list.length == 3);
  assert(list[1] == 2);
  print(list.length);
  print(list[1]);

  list[1] = 1;
  assert(list[1] == 1);
  print(list[1]);
}
```

**Lankah 2**
![Langkah 2](./praktikum1/langkah2.png)
> Kode mencetak nilai 3 (panjang list), 2(value list pada index ke 1), dan 1(value pada list index ke 1 setelah diubah nilainya)
>

**Langkah 3**
![Langkah 3](./praktikum1/langkah3.png)

## Praktikum 2 - Eksperimen Tipe Data Set

**Langkah 1**

![Langkah 1](./praktikum2/langkah1.png)

**Langkah 2**
![Langkah 2](./praktikum2/langkah2.png)
> Mencetak value yang tersimpan pada set halogens
>
**Langkah 3**
![Langkah 3](./praktikum2/langkah3.png)
> Mencetak 3 value kosong karena names1, names2, dan names3 belum diassign valuenya
> Perbaikan
> Setelah diperbaiki, kode menghasilkan output value set yang berisi nama dan nim
> ![Langkah 3 Perbaikan](./praktikum2/langkah3_perbaikan.png)

## Praktikum 3 - Eksperimen Tipe Data Maps

**Langkah 1**
![Langkah 1](./praktikum3/langkah1.png)

**Langkah 2**
![Langkah 2](./praktikum3/langkah2.png)
> Mencetak value dari maps gifts dan nobleGases sesuai dengan key dan value nya

**Langkah 3**
![Langkah 3](./praktikum3/langkah3.png)
> Dari penambahan kode yang dilakukan ialah mengubah tiap value Map menjadi string dan pada key terakhir valuenya diubah menjadi 'golden rings' untuk gifts dan 'argon' untuk nobleGases, namun tidak dicetak pada console

> Setelah dilakukan perbaikan dan ditambahkan nim dan nama pada tiap variabel
> ![Langkah 3 Perbaikan](./praktikum3/langkah3_perbaikan.png)
> ![Langkah 3 Output](./praktikum3/langkah3_output.png)
>

## Praktikum 4 - Eksperimen Tipe Data List: Spread dan Control-flow Operators

**Langkah 1**
![Langkah 1 Error](./praktikum4/langkah1_error.png)
> Terjadi error dikarenakan yang dipanggil ketika dicetak seharusnya list bukan list1 karena dideklarasikan dengan nama 'list'

**Langkah 2**
> Perbaikan
> Setelah diperbaiki kode tersebut digunakan untuk menambahkan value list ke dalam list2 dengan operator spread, sehingga list 2 berisi (0, 1, 2, 3)
> ![Langkah 2 Perbaikan](./praktikum4/langkah1_perbaikan.png)

**Langkah 3**
> Terjadi error karena list tidak bisa berisi null
> ![Langkah 3 Error](./praktikum4/langkah3_error.png)
> Perbaikan
> ![Langkah 3 Perbaikan](./praktikum4/langkah3_perbaikan.png)

**Langkah 4**
> Terjadi error karena variabel promoActive belum dideklarasikan
> ![Langkah 4 Error](./praktikum4/langkah4_error.png)
> Perbaikan Jika true menampilkan menu tambahan yaitu outlet
> ![Langkah 4 True](./praktikum4/langkah4_true.png)
> Jika false jika hanya menampilkan menu home, furniture, dan plants
> ![Langkah 4 False](./praktikum4/langkah4_false.png)

**Langkah 5**
> Terjadi error karena variabel login belum dideklarasikan
> ![Langkah 5 Error](./praktikum4/langkah5_error.png)
> Perbaikan
> ![Langkah 5 Perbaikan](./praktikum4/langkah5_perbaikan.png)
> Jika login memiliki kondisi lain
> ![Langkah 5 Kondisi Lain](./praktikum4/langkah5_lain.png)

**Langkah 6**
![Langkah 6](./praktikum4/langkah6.png)
> Mencetak nilai [#0, #1, #2, #3]
> Collection For digunakan untuk membuat list dengan memanfaatkan perulangan

## Praktikum 5 - Eksperimen Tipe Data Records

**Langkah 1**

![Langkah 1](./praktikum5/langkah1_error.png)

**Langkah 2**
> Terjadi error karena line 2 belum ditutup dengan semicolon(;)
> Perbaikan
> ![Langkah 2 Perbaikan](./praktikum5/langkah1_perbaikan.png)

**Langkah 3**
![Langkah 3](./praktikum5/langkah3.png)

**langkah 4**
![Langkah 4](./praktikum5/langkah4_error.png)
> Terjadi error karena variabel mahasiswa belum di assign value
> Perbaikan
> ![Langkah 4 Perbaikan](./praktikum5/langkah4_perbaikan.png)

**Langkah 5**
![Langkah 5](./praktikum5/langkah5.png)
> Kode tersebut mencetak tiap value mahasiswa2 dengan mengakses posisi nya satu-satu
> Diganti dengan nama dan NIM
> ![Langkah 5 Perubahan](./praktikum5/langkah5_diubah.png)


## Tugas Praktikum

1. Silakan selesaikan Praktikum 1 sampai 5, lalu dokumentasikan berupa screenshot hasil pekerjaan Anda beserta penjelasannya!
2. Jelaskan yang dimaksud Functions dalam bahasa Dart!
   Functions adalah blok kode yang dapat dijalankan untuk melakukan tugas tertentu
3. Jelaskan jenis-jenis parameter di Functions beserta contoh sintaksnya!
   a. Named Parameters
      Parameter yang bisa dipanggil dengan nama spesifik, bukan berdasarkan posisi.
      ![Named](./tugas/named_parameter.png)
   b. Optional Positional Parameters
      Parameter yang sifatnya opsional. Didefinisikan dalam tanda kurung siku [].
      Contoh 
      ![Optional](./tugas/optional_parameter.png)
4. Jelaskan maksud Functions sebagai first-class objects beserta contoh sintaknya!
   Functions sebagai first-class objects maksudnya bahwa :
   a. Bisa disimpan dalam variabel
   b. Dikirim sebagai argumen ke fungsi lain
   c. Dikembalikan sebagai nilai dari fungsi lain
   Contoh
   ![Function](./tugas/no4.png)
5. Apa itu Anonymous Functions? Jelaskan dan berikan contohnya!
   Sebuah fungsi yang namanya tidak dideklarasikan dan biasanya digunakan sebagai argumen dalam fungsi lain
   Contoh
   ![Anonymous Function](./tugas/no5.png)
6. Jelaskan perbedaan Lexical scope dan Lexical closures! Berikan contohnya!
   a. Lexical scope
      sebuah variabel hanya bisa diakses di dalam cakupan (scope) di mana variabel tersebut dideklarasikan.
      ![Lexical Scope](./tugas/lexical_scope.png)
   b. Lexical closures
      memungkinkan sebuah fungsi untuk mengingat variabel di cakupan  mana fungsi tersebut dideklarasikan, bahkan setelah scope tersebut tidak aktif lagi.
      ![Lexical Closure](./tugas/lexical_scope.png)

7. Jelaskan dengan contoh cara membuat return multiple value di Functions!
   ![7](./tugas/no7.png)
8. Kumpulkan berupa link commit repo GitHub pada tautan yang telah disediakan di grup Telegram!
   link repo : [Link repo](https://github.com/anabellatus/04_2241720095_pemrograman-mobile-2024/tree/main/Pertemuan4)