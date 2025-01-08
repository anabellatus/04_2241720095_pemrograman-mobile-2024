import 'package:flutter/material.dart';

class NavigationSecond extends StatefulWidget {
  const NavigationSecond({super.key});

  @override
  State<NavigationSecond> createState() => _NavigationSecondState();
}

class _NavigationSecondState extends State<NavigationSecond> {
  @override
  Widget build(BuildContext context) {
    Color color;
        return Scaffold(
      appBar: AppBar(
        title: const Text('Ana Navigation Second Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              onPressed: () {
                color = Colors.amberAccent.shade700;
                Navigator.pop(context, color);
              },
              child: const Text('Amber'),
            ),
            ElevatedButton(
              onPressed: () {
                color = Colors.deepPurple.shade700;
                Navigator.pop(context, color);
              },
              child: const Text('Purple'),
            ),
            ElevatedButton(
              onPressed: () {
                color = Colors.blueGrey.shade700;
                Navigator.pop(context, color);
              },
              child: const Text('Grey'),
            ),
          ],
        ),
      ),
    );
  }
}
