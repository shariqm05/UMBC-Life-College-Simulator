# UMBC-Life
A point-and-click videogame that I developed in my first semester of college using Processing 4, A visual OOP language built on top of Java, to demonstrate mastery in foundational programming skills and original software design & development.

The primary goal of this game is to help incoming college freshmen practice good decision-making skills and get accustomed to college life.

## About the Project

This game is intended to be a fun and interactive way for new college students to simulate the types of choices and scenarios they'll face during their first semester. Through a series of scenarios, players make decisions that impact their character's stats, such as health, money, grades, and happiness. Each choice leads to different outcomes, encouraging players to think critically about their actions and understand the potential consequences. 

The source code is about 2300 lines long, all of it originally designed, structured, and developed by yours truly :)

## What I Learned

Developing this game allowed me to demonstrate my mastery of foundational programming skills, including:
- **Conditional Logic**: The game makes extensive use of conditional statements to control game flow and dynamically update the state based on player decisions.
- **Program Structuring**: I organized the code into modular functions to improve readability, maintainability, and reusability. The game's functionality is split across several methods, each responsible for specific tasks, such as rendering the game UI, handling user input, and managing game states.
- **Program Design and Architecture**: Unlike in-class projects, where a general program layout and template are provided for you to complete, this project helped me develop the skill to design a program's general architecture from scratch. It forced me to think about what functions will be needed for the game and what logic those functions will require to work cohesively with the entire program. 
- **OOP Fundamentals**: While the game is not fully object-oriented, it utilizes fundamental OOP concepts like managing objects (`PImage` objects for images) and encapsulating logic within methods. This modular approach lays the groundwork for more complex OOP design in future projects.

## Features

- **Interactive Decision-Making**: Players are presented with various scenarios that mimic real-life college situations. Each decision affects multiple aspects of the player's virtual life.
- **Dynamic Game States**: The game state updates in real-time based on the player's actions, creating a responsive and engaging experience.
- **Progression Through the Semester**: The game progresses through different stages of the first semester, starting from the beginning, moving to the midterm period, and culminating in the final exams. Each stage presents new challenges and decisions, reflecting the evolving nature of a college semester.
- **Multiple Endings**: Depending on the choices made throughout the game, players can experience different outcomes, reflecting the complexity and unpredictability of college life.
- **Visual Feedback**: The game uses visual elements (images, text, and UI components) to provide feedback based on player choices.

## How to Play

### Getting Started
1. **Download or Clone the Repository**:  
   Clone this repository to your local machine using:
   ```bash
   git clone https://github.com/yourusername/UMBC-College-Life-Simulator.git
   ```

2. **Download All Required Image Files**:  
   Ensure you have all the image files needed for the game to run. The image files should be available in the repository's `data` folder. Download and save all these files to a `data` directory in your Processing sketch folder on your desktop. The game will not run correctly if these files are missing or inaccessible.

3. **Open the Game in Processing**:  
   Open the project in the [Processing IDE](https://processing.org/) and make sure all the necessary files (like images) are in the `data` folder.

4. **Run the Game**:  
   Click the 'Run' button in Processing to start the game.

### Gameplay Instructions

1. **Main Screen**:  
   - When the game starts, you'll see the main screen with a "PLAY" button. Click it to begin your journey.
   - You'll be prompted to choose your major: Computer Engineering, Visual Arts, or Psychology. Each major presents different scenarios and challenges.

2. **Making Decisions**:  
   - Throughout the game, you'll face various scenarios where you'll need to make decisions. Use your mouse to click on the options presented. Each choice will impact your stats: health, money, grades, and happiness.
   - Your current stats are displayed as bars on the screen. Keep an eye on these to monitor how your choices are affecting your overall status.

3. **Progressing Through the Game**:  
   - The game is structured to simulate the flow of a college semester:
     - **Beginning of the Semester**: You'll face introductory challenges and decisions to set the tone for your college experience.
     - **Midterms**: As the game progresses, you'll encounter scenarios centered around midterm exams and the pressures that come with them.
     - **Final Exams**: Toward the end, you'll make decisions that impact your final exam preparations and overall performance.
   - You can press the 'W' key at any time to skip ahead to the results screen.

4. **End of the Game**:  
   - The game ends once you reach the final scenario. A results screen will display, showing the overall outcome of your choices based on your final stats.

### Game Rules

- **Goal**: The goal is to make the best decisions to balance your health, money, grades, and happiness throughout your first semester.
- **Decisions Matter**: Every choice has consequences, and there are no right or wrong answers—just different outcomes.
- **Watch Your Stats**: Keep track of your stats (health, money, grades, and happiness) to ensure they don't fall too low.
- **Multiple Endings**: Depending on your final stats, you'll receive different feedback and results at the end of the game.

## Technical Overview

- **Programming Language**: Processing (Java-based)
- **Key Concepts Demonstrated**:
  - **Conditional Logic**: Used extensively for game flow control and state management.
  - **Modular Design**: Functions are used to encapsulate specific pieces of game logic.
  - **State Management**: Boolean variables and integers manage the game's dynamic states.
  - **Basic Event Handling**: `mousePressed()` and `keyPressed()` functions handle user input.

## Future Improvements

This project was an excellent opportunity to build a foundation in game development. Moving forward, I plan to:
- Refactor the game using more advanced Object-Oriented Programming (OOP) principles.
- Improve the visual design and add more animations.
- Introduce more complex decision-making algorithms to create even more dynamic scenarios and outcomes.

## Contact

Feel free to reach out to me if you have any questions or feedback about the game! I'm always open to improving my work and collaborating on new projects.  

- **Email**: shariqm2005@gmail.com  
- **LinkedIn**: https://www.linkedin.com/in/shariq-moghees-02ba712b2/
