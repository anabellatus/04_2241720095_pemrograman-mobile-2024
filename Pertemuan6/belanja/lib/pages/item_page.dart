import 'package:belanja/models/item.dart';
import 'package:flutter/material.dart';

class ItemPage extends StatelessWidget {
  const ItemPage({super.key});

  @override
  Widget build(BuildContext context) {
    final itemArgs = ModalRoute.of(context)!.settings.arguments as Item;

    final heroImage = Center(
      child: Hero(
        tag: itemArgs.name,
        child: Image.asset(
          'images/${itemArgs.name.toLowerCase()}.png',
          height: 300,
          fit: BoxFit.cover,
        ),
      ),
    );

    final itemName = Text(
      itemArgs.name,
      style: const TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
      ),
    );

    final itemPrice = Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Text(
        'Rp. ${itemArgs.price},-',
        style: const TextStyle(
          fontSize: 16,
          color: Colors.green,
          fontWeight: FontWeight.bold,
        ),
      ),
    );

    final itemStock = Text('Stock: ${itemArgs.stock}');

    final itemRating = Padding(
      padding: const EdgeInsets.all(14.0),
      child: Row(
        children: [
          const Icon(
            Icons.star,
            color: Colors.yellow,
          ),
          Text(itemArgs.rating.toString()),
        ],
      ),
    );

    final itemDescription = Text(itemArgs.desc);

    const footer = Padding(
      padding: EdgeInsets.all(38.0),
      child: Center(
        child: Column(
          children: [
            Text('Ana Bellatus Mustaqfiro'),
            Text('2241720095'),
          ],
        ),
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text('Item Page - Ana B.M 2241720095'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            heroImage,
            itemName,
            itemPrice,
            itemStock,
            itemRating,
            itemDescription,
            footer,
          ],
        ),
      ),
    );
  }
}
