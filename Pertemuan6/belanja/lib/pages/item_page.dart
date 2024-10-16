import 'package:belanja/models/item.dart';
import 'package:flutter/material.dart';

class ItemPage extends StatelessWidget {
  const ItemPage({super.key});

  @override
  Widget build(BuildContext context) {

    final itemArgs = ModalRoute.of(context)!.settings.arguments as Item;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Item Page - Ana B.M 2241720095'),
      ),
      body: Center(
        child: Column(
          children: [
            Text(itemArgs.name),
            Text(itemArgs.price.toString()),
          ],
        ),
      ),
    );
  }
}