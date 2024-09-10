import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text('Tic Tac Toe'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Title
            Text(
              'Choose Your Mode',
              style: TextStyle(
                fontSize: screenWidth * 0.07, // Responsive font size
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: screenHeight * 0.05), // Responsive space

            // Play with Robot button
            ElevatedButton(
              onPressed: () {
                Get.toNamed('/robot_play'); // Navigate to RobotPlayPage
              },
              child: Text(
                'Play With Robot',
                style: TextStyle(
                  fontSize: screenWidth * 0.05, // Responsive font size
                ),
              ),
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(
                  horizontal: screenWidth * 0.2,
                  vertical: screenHeight * 0.02,
                ),
              ),
            ),
            SizedBox(height: screenHeight * 0.02), // Responsive space

            // Play with Friend button
            ElevatedButton(
              onPressed: () {
                Get.toNamed('/friend_play'); // Navigate to FriendPlayPage
              },
              child: Text(
                'Play With Friend',
                style: TextStyle(
                  fontSize: screenWidth * 0.05, // Responsive font size
                ),
              ),
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(
                  horizontal: screenWidth * 0.2,
                  vertical: screenHeight * 0.02,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
