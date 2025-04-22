import 'package:flutter/material.dart';
import '../widgets/coffee_card.dart';

class HomeScreen extends StatelessWidget {
  final List<Map<String, dynamic>> coffeeList = [
    {
      "name": "Caffe Mocha",
      "type": "Deep Foam",
      "price": 4.53,
      "image": "assets/coffee1.jpg",
    },
    {
      "name": "Flat White",
      "type": "Espresso",
      "price": 3.53,
      "image": "assets/coffee2.jpg",
    },
    {
      "name": "cappuccino",
      "type": "Deep Foam",
      "price": 5.53,
      "image": "assets/coffee3.jpg",
    },
    {
      "name": "Frappuccino",
      "type": "Deep Foam",
      "price": 6.53,
      "image": "assets/coffee4.jpg",
    },
    {
      "name": "coffee latte",
      "type": "Deep Foam",
      "price": 8.53,
      "image": "assets/coffee5.jpg",
    },
    {
      "name": " dobbule Caffe Mocha",
      "type": "Deep Foam",
      "price": 12.53,
      "image": "assets/coffee6.jpg",
    },
    // تكرار العناصر لو تبغين تملي الشبكة أكثر
  ];

  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // خانة البحث + الايقونة
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Search coffee',
                          border: InputBorder.none,
                          prefixIcon: Icon(Icons.search, color: Colors.grey),
                          contentPadding: EdgeInsets.symmetric(vertical: 14),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 16),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: Color(0xFFD17B47),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Icon(Icons.tune, color: Colors.white),
                  ),
                ],
              ),
            ),

            // المسافة البسيطة
            const SizedBox(height: 8),
            Expanded(
              child: GridView.count(
                padding: EdgeInsets.all(16),
                crossAxisCount: 2,
                mainAxisSpacing: 16,
                crossAxisSpacing: 16,
                childAspectRatio: 0.7,
                children: coffeeList.map((coffee) {
                  return CoffeeCard(
                    coffee: coffee,
                    onTap: () {
                      Navigator.pushNamed(context, '/detail', arguments: coffee);
                    },
                  );
                }).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
