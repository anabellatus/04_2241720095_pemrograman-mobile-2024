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
> ![Langkah 3 Error](./praktikum4/langkah3_error.png)