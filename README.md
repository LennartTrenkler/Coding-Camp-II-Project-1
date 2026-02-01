# BrickBreaker🎮

## Project Overview
**BrickBreaker** is a simple arcade-style brick breaker game developed in **Processing** as part of Coding Camp II – Project 1.  
The game demonstrates core programming and game development concepts such as object-oriented programming, arrays, collision detection, and time-based game logic.

The player controls a paddle to keep a ball in play and destroy bricks within a fixed time limit.

---

## How the Game Works (Simple Explanation)
- A ball moves around the screen and bounces off walls and the paddle.
- The player controls the paddle at the bottom of the screen.
- When the ball hits a brick, the brick disappears.
- Once **all bricks are destroyed**, they automatically reset.
- The game runs for a **fixed amount of time**.
- When the time runs out, the game ends and displays a message.

---

## Features
- Paddle control using keyboard input
- Ball movement and collision detection
- Multiple bricks managed using an array
- **Time limit** (game ends after a fixed duration)
- **Automatic brick reset** when all bricks are destroyed
- Modular design using multiple classes

---

## Project Structure
project1_pde

 project1.pde // Main file (setup, draw loop, game logic)
 
 Ball.pde // Ball movement and collision handling
 
 Paddle.pde // Paddle control and movement
 
 Brick.pde // Brick behavior and active state
 


Each file represents a specific game component to keep the code clean and organized.

---

## Technologies Used
- **Processing**
- Object-Oriented Programming (OOP)
- Arrays
- Time-based logic

---

## How to Run the Game
1. Download or clone this repository.
2. Open the `project1_pde` folder in Processing.
3. Make sure all `.pde` files are in the same sketch.
4. Click **Run**.

---

## Team
**Team Name:** Eucalyptus  
- Lennart Trenkler  
- Felicia Odai Bonney  

---



The project is organized into multiple `.pde` files:

