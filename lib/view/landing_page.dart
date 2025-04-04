import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'PasswordScreen.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double height = Get.height;
    final double width = Get.width;

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: width * 0.05),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: height * 0.05),
            CircleAvatar(
              radius: width * 0.13,
              backgroundColor: Colors.white,
              child: Image.asset(
                'assets/images/img.png',
                width: width * 0.2,
                height: height * 0.1,
                fit: BoxFit.contain,
              ),
            ),
            SizedBox(height: height * 0.03),
            Text(
              "Shopper's Stop",
              style: TextStyle(
                fontSize: width * 0.08,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: height * 0.05),
            SizedBox(
              width: double.infinity,
              height: height * 0.07,
              child: ElevatedButton(
                onPressed: () {
                  Get.to(() => PasswordScreen());
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Text(
                  "Let's get started",
                  style: TextStyle(
                    fontSize: width * 0.045,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            SizedBox(height: height * 0.025),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "I already have an account",
                  style: TextStyle(fontSize: width * 0.04),
                ),
                SizedBox(width: width * 0.01),
                IconButton(
                  onPressed: () {
                    // Navigate to login screen or perform action
                  },
                  icon: Icon(Icons.arrow_forward, color: Colors.blue),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
