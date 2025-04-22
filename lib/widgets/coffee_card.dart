import 'package:flutter/material.dart';

class CoffeeCard extends StatelessWidget {
  final Map<String, dynamic> coffee;
  final VoidCallback onTap;

  const CoffeeCard({super.key, required this.coffee, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: ClipRRect(
                borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
                child: Image.asset(
                  coffee["image"],
                  fit: BoxFit.cover,
                  width: double.infinity,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                coffee["name"],
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                coffee["type"],
                style: TextStyle(color: Colors.grey),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "\$${coffee["price"]}",
                style: TextStyle(fontWeight: FontWeight.bold, color: Colors.brown),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
