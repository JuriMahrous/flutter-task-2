import 'package:flutter/material.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            //image: Image.asset("assets/coffee_onboarding.jpg").image,
            image: AssetImage('assets/coffee_onboarding.jpg'),

            //image: AssetImage("assets/coffee_onboarding.jpg"),
            //image: AssetImage('assets/assetscoffee_onboarding.jpg'), // ضع صورة خلفية مناسبة هنا
            //image: AssetImage('assets/assetscoffee_onboarding.jpg'),
            //image: AssetImage('C:\\Users\\HP\\OneDrive\\Documents\\FlutterTask2Juri\\task2juri\\build\\flutter_assets\\packages\\cupertino_icons\\assets\\coffee_onboarding.jpg'), // ضع صورة خلفية مناسبة هنا
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Text(
                'Fall in Love with Coffee in Blissful Delight!',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
              backgroundColor: Colors.brown,
              shape: StadiumBorder(),
              padding: EdgeInsets.symmetric(horizontal: 40, vertical: 16),
              ),
              onPressed: () {
              Navigator.pushReplacementNamed(context, '/home');
              },
              child: Text(
              'Get Started',
              style: TextStyle(fontSize: 18, color: Colors.white),
              ),
            ),
            SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}
