# Modul 10

---

#### NIM : 2241720095

#### Nama   : Ana Bellatus Mustaqfiro

#### Kelas   : D4 TI - 3F

#### No. Urut  : 04

#### Mata Kuliah  : Pemrograman Mobile (10 | Dasar State Management)

---

## Praktikum 1 - Dasar State dengan Model-View

**Langkah 1 - Buat project baru**
![Langkah 1](./assets/01.png)

**Langkah 2 - Membuat model task.dart**
**models/task.dart**

```dart
class Task {
  final String description;
  final bool complete;

  const Task({
    this.complete = false,
    this.description = '',
  });
}
```

**Langkah 3 - Buat file plan.dart**
**models/plan.dart**

```dart
import './task.dart';

class Plan {
  final String name;
  final List<Task> tasks;

  const Plan({
    this.name = '',
    this.tasks = const [],
  });
}
```

**Langkah 4 - Buat file data_layer.dart**
**models/data_layer.dart**

```dart
export 'plan.dart';
export 'task.dart';
```

**Langkah 5 - Pindah ke file main.dart**
**main.dart**

```dart
import 'package:flutter/material.dart';

void main() => runApp(const MasterPlanApp());

class MasterPlanApp extends StatelessWidget {
  const MasterPlanApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.purple),
      home: PlanScreen(),
    );
  }
}
```

**Langkah 6 - buat plan_screen.dart**
**plan_screen.dart**

```dart
class PlanScreen extends StatefulWidget {
  const PlanScreen({super.key});

  @override
  State<StatefulWidget> createState() => _PlanScreenState();
}

class _PlanScreenState extends State<PlanScreen> {
  Plan plan = const Plan();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Master Plan Ana Bellatus'),
      ),
      body: _buildList(),
      floatingActionButton: _buildAddTaskButton(),
    );
  }
}
```

**Langkah 7 - buat method _buildAddTaskButton()**
**plan_screen.dart**

```dart
Widget _buildAddTaskButton() {
    return FloatingActionButton(
      child: const Icon(Icons.add),
      onPressed: () {
        setState(() {
          plan = Plan(
            name: plan.name,
            tasks: List<Task>.from(plan.tasks)..add(const Task()),
          );
        });
      },
    );
  }
```

**Langkah 8 - buat widget _buildList()**
**plan_screen.dart**

```dart
Widget _buildList() {
    return ListView.builder(
      itemCount: plan.tasks.length,
      itemBuilder: (context, index) => _buildTaskTile(plan.tasks[index], index),
    );
  }
```

**Langkah 9 - buat widget _buildTaskTile**
**plan_screen.dart**

```dart
Widget _buildTaskTile(Task task, int index) {
    return ListTile(
      leading: Checkbox(
          value: task.complete,
          onChanged: (selected) {
            setState(() {
              plan = Plan(
                name: plan.name,
                tasks: List<Task>.from(plan.tasks)
                  ..[index] = Task(
                    description: task.description,
                    complete: selected ?? false,
                  ),
              );
            });
          }),
      title: TextFormField(
        initialValue: task.description,
        onChanged: (text) {
          setState(() {
            plan = Plan(
              name: plan.name,
              tasks: List<Task>.from(plan.tasks)
                ..[index] = Task(
                  description: text,
                  complete: task.complete,
                ),
            );
          });
        },
      ),
    );
  }
```

Run atau tekan F5 untuk melihat hasil aplikasi yang Anda telah buat. Capture hasilnya untuk soal praktikum nomor 4.
![Hasil](./assets/02.gif)

**Langkah 10 - Tambah Scroll Controller**
**plan_screen.dart**

```dart
class _PlanScreenState extends State<PlanScreen> {
  Plan plan = const Plan();
  late ScrollController scrollController;
  //...
  }
```

**Langkah 11 - Tambah Scroll Listener**
**plan_screen.dart**

```dart
class _PlanScreenState extends State<PlanScreen> {
  Plan plan = const Plan();
  late ScrollController scrollController;

  @override
  void initState() {
    super.initState();
    scrollController = ScrollController()
      ..addListener(() {
        FocusScope.of(context).requestFocus(FocusNode());
      });
  }

  //...
}
```

**Langkah 12 - Tambah controller dan keyboard behavior**
**plan_screen.dart**

```dart
class _PlanScreenState extends State<PlanScreen> {
  
  //...

  Widget _buildList() {
    return ListView.builder(
      itemCount: plan.tasks.length,
      itemBuilder: (context, index) => _buildTaskTile(plan.tasks[index], index),
      controller: scrollController,
      keyboardDismissBehavior: Theme.of(context).platform == TargetPlatform.iOS
          ? ScrollViewKeyboardDismissBehavior.onDrag
          : ScrollViewKeyboardDismissBehavior.manual,
    );
  }

  //...
}
```

**Langkah 13 - Terakhir, tambah method dispose()**
**plan_screen.dart**

```dart
class _PlanScreenState extends State<PlanScreen> {
  //...

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  //...
}
```

**Langkah 14 - Hasil**
![Hasil](./assets/03.gif)

## Tugas Praktikum 1: Dasar State dengan Model-View

1. Selesaikan langkah-langkah praktikum tersebut, lalu dokumentasikan berupa GIF hasil akhir praktikum beserta penjelasannya di file README.md! Jika Anda menemukan ada yang error atau tidak berjalan dengan baik, silakan diperbaiki.
2. Jelaskan maksud dari langkah 4 pada praktikum tersebut! Mengapa dilakukan demikian?
   > pada langkah tersebut dilakukan pembungkusan beberapa data layer ke dalam sebuah file data_layer.dart, yang nantinya file tersebtu mengekspor model-model tersebut, sehingga ketika membutuhkan beberapa model tidak perlu melakukan import banyak class. Dibuat demikian untuk menyederhanakan proses import menjadi 1 import saja.
3. Mengapa perlu variabel plan di langkah 6 pada praktikum tersebut? Mengapa dibuat konstanta ?
   > pada langkah tersebut diperlukan variabel plan karena digunakan untuk membuat objek baru dari class Plan yang nantinya untuk membuat data plan baru, dibuat konstanta untuk membuat konstruktor.
4. Lakukan capture hasil dari Langkah 9 berupa GIF, kemudian jelaskan apa yang telah Anda buat!
   > Hasil
   ![Hasil](./assets/02.gif)
   > Membuat sebuah aplikasi untuk membuat daftar plan dengan menerapkan dasar state dengan Model-View, sehingga dilakukan pemisahan file untuk model (data) dan view (tampilan) nya
5. Apa kegunaan method pada Langkah 11 dan 13 dalam lifecyle state?
   > method pada langkah 11 digunakan untuk memulai/mengaktifkan state lifecycle sehingga nantinya controller dapat digunakan dan tersimpan di dalam state. Sedangkan method pada langkah 13 digunakan untuk menghapus/menonaktifkan state lifecycle ketika state controller tidak lagi digunakan agar tidak terjadi memory leak pada saat aplikasi dijalankan.
6. Kumpulkan laporan praktikum Anda berupa link commit atau repository GitHub ke dosen yang telah disepakati !