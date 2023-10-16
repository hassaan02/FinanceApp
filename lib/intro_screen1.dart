import 'package:flutter/material.dart';

class IntroScreen1 extends StatelessWidget {
  const IntroScreen1({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Image.asset(
              "lib/Assets/Images/onboarding screen 2.png",
            ),
            const SizedBox(
              height: 100,
            ),
            const Text(
              "All finances in one application",
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Get the big picture by combining all your finances and bank accounts in one place",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 18,
                  color: Colors.grey,
                  fontWeight: FontWeight.w400),
            )
          ],
        ),
      ),
    );
  }
}
