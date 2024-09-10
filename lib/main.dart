import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tic_tac_toe_game/views/screens/FriendPlayPage.dart';
import 'views/screens/HomePage.dart';
import 'views/screens/RobotPlayPage.dart';

void main() {
  runApp(TicTacToeApp());
}

class TicTacToeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tic Tac Toe',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
      getPages: [
        GetPage(name: '/home', page: () => HomePage(),),
        GetPage(name: '/robot_play', page: () => RobotPlayPage(),),
        GetPage(name: '/friend_play', page: () => FriendPlayPage(),),
      ],
    );
  }
}
