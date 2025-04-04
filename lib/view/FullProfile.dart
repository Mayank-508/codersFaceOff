import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FullProfileScreen extends StatelessWidget {
  final ProfileController profileController = Get.put(ProfileController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
        actions: [
          IconButton(
            icon: Icon(Icons.edit), // Button to navigate to another screen
            onPressed: () {
              Get.toNamed('/editProfile'); // Navigate using GetX
            },
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(Get.width * 0.05), // Responsive padding
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Profile Section
            Row(
              children: [
                CircleAvatar(
                  radius: Get.width * 0.12, // Responsive size
                  backgroundImage: AssetImage("assets/images/profile.png"),
                ),
                SizedBox(width: Get.width * 0.04), // Responsive spacing
                Obx(() => Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      profileController.username.value,
                      style: TextStyle(
                          fontSize: Get.width * 0.05,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(profileController.email.value),
                  ],
                )),
              ],
            ),

            SizedBox(height: Get.height * 0.03),

            // Orders Section
            Text("My Orders",
                style: TextStyle(
                    fontSize: Get.width * 0.05, fontWeight: FontWeight.bold)),
            SizedBox(height: Get.height * 0.01),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                OrderButton(title: "To Pay"),
                OrderButton(title: "To Receive"),
                OrderButton(title: "To Review"),
              ],
            ),

            SizedBox(height: Get.height * 0.03),

            // Categories Section
            Text("Categories",
                style: TextStyle(
                    fontSize: Get.width * 0.05, fontWeight: FontWeight.bold)),
            SizedBox(height: Get.height * 0.01),
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: Get.width > 600 ? 4 : 2,
                  crossAxisSpacing: Get.width * 0.02,
                  mainAxisSpacing: Get.width * 0.02,
                  childAspectRatio: 0.8,
                ),
                itemCount: profileController.categories.length,
                itemBuilder: (context, index) {
                  return CategoryItem(profileController.categories[index]);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Button Widget for Orders
class OrderButton extends StatelessWidget {
  final String title;
  const OrderButton({required this.title});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ElevatedButton(
        onPressed: () {},
        child: Text(title),
      ),
    );
  }
}

// Category Item Widget
class CategoryItem extends StatelessWidget {
  final String category;
  const CategoryItem(this.category);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: Text(category,
            style: TextStyle(fontSize: Get.width * 0.04, fontWeight: FontWeight.bold)),
      ),
    );
  }
}
