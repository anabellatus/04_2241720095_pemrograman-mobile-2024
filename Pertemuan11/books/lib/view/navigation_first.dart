import 'package:books/view/navigation_second.dart';
import 'package:flutter/material.dart';

class NavigationFirst extends StatefulWidget {
  const NavigationFirst({super.key});

  @override
  State<NavigationFirst> createState() => _NavigationFirstState();
}

class _NavigationFirstState extends State<NavigationFirst> {
  Color color = Colors.indigoAccent.shade700;

  Future _navigateAndGetColor(BuildContext context) async {
    color = await Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => NavigationSecond()),
        ) ??
        Colors.blue;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color,
      appBar: AppBar(
        title: const Text('Ana Navigation First Screen'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            _navigateAndGetColor(context);
          },
          child: const Text('Change Color'),
        ),
      ),
    );
  }
}
