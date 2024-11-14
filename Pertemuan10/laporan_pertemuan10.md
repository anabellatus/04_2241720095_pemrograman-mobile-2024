# Modul 10

---

#### NIM : 2241720095

#### Nama   : Ana Bellatus Mustaqfiro

#### Kelas   : D4 TI - 3F

#### No. Urut  : 04

#### Mata Kuliah  : Pemrograman Mobile (10 | Dasar State Management)

---

## Praktikum 1 - Mengambil Foto dengan Kamera di Flutter

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
