import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PasswordScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Enter Password'),
      //   actions: [
      //     IconButton(
      //
      //       icon: Icon(Icons.person),
      //       onPressed: () {
      //         Get.to(() => FullProfileScreen());
      //       },
      //     ),
      //
      //   ],
      // ),
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        // 🔹 Wrap Column inside a ScrollView to prevent overflow
        child: Stack(
          children: [
            // Background design
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: Image.asset(
                'assets/images/img_1.png',
                width: Get.width,
                height: Get.height * 0.35,
                fit: BoxFit.cover,
              ),
            ),

            // Content Section
            Column(
              children: [
                SizedBox(height: Get.height * 0.18), // Adjust for positioning
                // Avatar
                Center(
                  child: CircleAvatar(
                    radius: Get.width * 0.15,
                    backgroundColor: Colors.white,
                    child: Image.asset(
                      'assets/images/romilla.png',
                      width: Get.width * 0.2,
                      height: Get.width * 0.2,
                    ),
                  ),
                ),

                SizedBox(height: Get.height * 0.02),

                // Greeting text
                Text(
                  "Hello, Romina!!",
                  style: TextStyle(
                    fontSize: Get.width * 0.07,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: Get.height * 0.01),

                Text(
                  "Type your password",
                  style: TextStyle(
                    fontSize: Get.width * 0.045,
                    color: Colors.grey,
                  ),
                ),

                SizedBox(height: Get.height * 0.03),

                // Password dots (static 6 red dots for now)
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(6, (index) {
                    return Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: Get.width * 0.015,
                      ),
                      child: Icon(
                        Icons.circle,
                        color: Colors.red,
                        size: Get.width * 0.035,
                      ),
                    );
                  }),
                ),

                SizedBox(height: Get.height * 0.03),

                // Forgot password
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "Forgot your password?",
                    style: TextStyle(
                      fontSize: Get.width * 0.045,
                      color: Colors.blue,
                    ),
                  ),
                ),

                SizedBox(height: Get.height * 0.04),

                // Keyboard image (design only)
                Image.asset(
                  'assets/images/keyboard.png', // Ensure the asset path is correct
                  width: Get.width * 0.98,
                  fit: BoxFit.contain,
                ),

                SizedBox(height: Get.height * 0.04),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
