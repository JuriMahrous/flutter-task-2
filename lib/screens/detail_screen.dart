import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Map<String, dynamic> coffee =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(coffee["image"], height: 200),
              ),
            ),
            SizedBox(height: 20),
            Text(
              coffee["name"],
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            Text(
              coffee["type"],
              style: TextStyle(color: Colors.grey, fontSize: 16),
            ),
            Row(
              children: [
                Icon(Icons.star, color: Colors.amber),
                Text('4.8 (230)'),
              ],
            ),
            SizedBox(height: 20),
            Text(
              "Description",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text(
              "A cappuccino is an approximately 150 ml (5 oz) beverage with espresso and milk foam.",
              style: TextStyle(fontSize: 16),
            ),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "\$${coffee["price"]}",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.brown),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.brown,
                    padding: EdgeInsets.symmetric(horizontal: 32, vertical: 12),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                    onPressed: () {},
                    child: Text(
                    "Buy Now",
                    style: TextStyle(color: Colors.white),
                    ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
