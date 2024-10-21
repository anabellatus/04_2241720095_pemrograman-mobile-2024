import 'package:belanja/models/item.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final List<Item> items = [
    Item(
        name: 'Sugar',
        stock: 20,
        price: 5000,
        rating: 4,
        desc:
            'Sugar is a sweet food that is made from sugar cane or sugar beet. Sugar is used to sweeten food and drinks. It is also used in making cakes and sweets.'),
    Item(
        name: 'Salt',
        stock: 30,
        price: 2000,
        rating: 3,
        desc:
            'Salt is a mineral that is composed primarily of sodium chloride, a chemical compound belonging to the larger class of salts; salt in its natural form as a crystalline mineral is known as rock salt or halite.'),
    Item(
        name: 'Rice',
        stock: 10,
        price: 8000,
        rating: 5,
        desc:
            'Rice is the seed of the grass species Oryza sativa (Asian rice) or less commonly Oryza glaberrima (African rice). As a cereal grain, it is the most widely consumed staple food for a large part of the world\'s human population, especially in Asia.'),
    Item(
        name: 'Egg',
        stock: 40,
        price: 20000,
        rating: 4,
        desc:
            'An egg is the organic vessel containing the zygote in which an embryo develops until it can survive on its own, at which point the animal hatches.'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Home Page - Ana B.M 2241720095'),
        ),
        body: Container(
          margin: const EdgeInsets.all(8),
          child: GridView.count(
            crossAxisCount: 2,
            children: List.generate(items.length, (index) {
              final Item item = items[index];
              return Column(
                children: [
                  ItemCard(item: item),
                ],
              );
            }),
          ),
        ));
  }
}

class ItemCard extends StatelessWidget {
  final Item item;

  const ItemCard({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    final heroImage = Hero(
      tag: item.name,
      child: Image.asset(
        'images/${item.name.toLowerCase()}.png',
        height: 100,
        fit: BoxFit.cover,
      ),
    );

    final itemName = Text(
      item.name,
      style: const TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
      ),
    );

    final itemPrice = Text(
      'Rp. ${item.price},-',
      style: const TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.bold,
      ),
    );

    final stockInfo = Text('Stock: ${item.stock}');

    final ratingRow = Row(
      children: [
        const Icon(
          Icons.star,
          color: Colors.yellow,
        ),
        Text(item.rating.toString()),
      ],
    );

    final bottomRow = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        stockInfo,
        ratingRow,
      ],
    );

    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, '/item', arguments: item);
      },
      child: Card(
        child: Container(
          margin: const EdgeInsets.all(8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(child: heroImage),
              itemName,
              itemPrice,
              bottomRow,
            ],
          ),
        ),
      ),
    );
  }
}
