import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/RobotPlayController.dart';

class RobotPlayPage extends StatelessWidget {
  final RobotPlayController _controller = Get.put(RobotPlayController());

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text('Play With Robot'),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(screenWidth * 0.05),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Game status (win/loss/draw)
            Obx(() => Text(
              _controller.gameStatus.value,
              style: TextStyle(
                fontSize: screenWidth * 0.07,
                fontWeight: FontWeight.bold,
                color: _controller.gameStatus.value == 'Draw'
                    ? Colors.orange
                    : _controller.gameStatus.value.contains('Win')
                    ? Colors.green
                    : Colors.red,
              ),
            )),
            SizedBox(height: screenHeight * 0.05), // Space

            // Tic-Tac-Toe Board
            Expanded(
              child: GridView.builder(
                itemCount: 9,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3, // 3x3 grid
                  mainAxisSpacing: screenWidth * 0.02,
                  crossAxisSpacing: screenWidth * 0.02,
                ),
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () => _controller.makeMove(index),
                    child: Obx(() => Container(
                      decoration: BoxDecoration(
                        color: Colors.blue[100],
                        border: Border.all(color: Colors.black),
                      ),
                      child: Center(
                        child: Text(
                          _controller.board[index],
                          style: TextStyle(
                            fontSize: screenWidth * 0.1,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    )),
                  );
                },
              ),
            ),
            SizedBox(height: screenHeight * 0.05), // Space

            // Reset Game Button
            ElevatedButton(
              onPressed: _controller.resetGame,
              child: Text(
                'Reset Game',
                style: TextStyle(fontSize: screenWidth * 0.05),
              ),
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(
                  horizontal: screenWidth * 0.1,
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
