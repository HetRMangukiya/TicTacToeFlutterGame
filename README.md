# Tic Tac Toe Flutter App

Welcome to the **Tic Tac Toe Flutter App** repository! This project is part of a tutorial featured on **HR Code Experts** YouTube channel, where we build a fully responsive, dynamic Tic Tac Toe game using **Flutter** and **GetX** for state management.

<p align="center">
  <img src="https://img.shields.io/badge/Flutter-v3.0-blue" />
  <img src="https://img.shields.io/badge/GetX-v4.6-green" />
</p>

## Project Overview

This app allows users to play Tic Tac Toe either against a robot (with a challenging AI using the **Minimax Algorithm**) or with a friend locally on the same device. It has a beautifully responsive design and uses **GetX** for state management, making it a highly efficient and performant app.

### Key Features
- **Play with Robot**: Compete against a robot with advanced AI, including unbeatable difficulty.
- **Play with Friend**: Local multiplayer feature where two players can take turns playing on the same device.
- **Dynamic UI**: A fully responsive design, using **MediaQuery** to adapt perfectly to different screen sizes.
- **State Management with GetX**: Leveraging GetX to manage game states effectively and efficiently.
- **Winning Line Animation**: A canvas line is drawn across the winning combination when a player wins the game.

## Screenshots

<p align="center">
  <img src="screenshots/homepage.png" width="30%" alt="Home Page Screenshot" />
  <img src="screenshots/play_with_friend.png" width="30%" alt="Play with Friend Screenshot" />
  <img src="screenshots/play_with_robot.png" width="30%" alt="Play with Robot Screenshot" />
</p>

## Watch the Full Tutorial

Check out the step-by-step tutorial on my YouTube channel **HR Code Experts**:

[![HR Code Experts - Tic Tac Toe Tutorial](https://img.shields.io/badge/Watch%20on-YouTube-red?logo=youtube)](https://www.youtube.com/@HRCodeExperts)

## Getting Started

To run this project locally, follow these steps:

### Prerequisites
- Flutter SDK installed (v3.0 or higher)
- An IDE like Visual Studio Code or Android Studio
- A device or emulator for testing

### Installation
1. **Clone this repository**:
   ```bash
   git clone https://github.com/HRCodeExperts/TicTacToeFlutterGame.git
   cd TicTacToeApp
   ```

2. **Install dependencies**:
   ```bash
   flutter pub get
   ```

3. **Run the app**:
   ```bash
   flutter run
   ```

## Folder Structure
  ```bash
  ├── lib
  │   ├── controllers        # GetX controllers for managing game logic
  │   ├── pages              # All UI pages like HomePage, FriendPlayPage, RobotPlayPage
  │   └── main.dart          # Main entry point of the app
  ├── assets
  │   └── images             # Images used in the app (if any)
  ├── pubspec.yaml           # Dependencies and project configurations
  └── README.md              # This file
  ```

## Technologies Used
- **Flutter**: UI toolkit for building natively compiled applications for mobile.
- **GetX**: Lightweight and powerful state management solution for Flutter.
- **Minimax Algorithm**: For implementing a hard-level AI in the robot gameplay.

## License
This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
