import 'package:belanja/models/item.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final List<Item> items = [
    Item(name: 'Sugar', stock: 20, price: 5000, rating: 4),
    Item(name: 'Salt', stock: 30, price: 2000, rating: 3),
    Item(name: 'Rice', stock: 10, price: 8000, rating: 5),
    Item(name: 'Egg', stock: 40, price: 20000, rating: 4),
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
                        Center(
                          child: Image.asset(
                            'images/${item.name.toLowerCase()}.jpg',
                            height: 100,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Text(item.name,
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            )),
                        Text(
                          'Rp. ${item.price},-',
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text('Stock: ${item.stock}'),
                            Row(
                              children: [
                                const Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                ),
                                Text(item.rating.toString()),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              );
            }),
          ),
        ));
  }
}
