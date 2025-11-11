# Partner Lab 3 – Memory Game 

This project is my implementation of the Memory Game for Partner Lab 3.  
For this assignment I rebuilt the game using the MVVM architecture and added a simple animation effect to make the card flipping feel smoother. I kept the code fairly basic since this lab focuses more on understanding structure rather than writing overly complicated SwiftUI.



# Project Overview

The app is a small “Snack Match” memory game.  
The screen shows a grid of cards, each hiding an emoji. The goal is to tap two cards and try to find a matching pair. When all pairs are matched, you can tap **Shuffle Cards** to restart the game.

I used a 3-column grid layout to keep things clean on mobile, and each card flips with a basic `rotation3DEffect` animation.



# MVVM Architecture 

I followed the MVVM design pattern by splitting the code into three parts:

### **Model**
This includes:
- `MemoryCard.swift` → defines what a card is  
- `MemoryGame.swift` → holds the game logic, matching rules, and card flipping behavior  

The model has **no UI code** and only handles the rules of the game.

### **ViewModel**
`MemoryGameViewModel.swift` connects the model to the UI.  
It uses `@Published` so whenever the game changes, the view updates automatically.  
It also exposes `cards`, handles tap events, and restarts the game.

### **View**
`ContentView.swift` and `CardView.swift` are responsible for the UI.  
They show the grid, handle user taps, and apply animations, but **never** contain game logic.



# Animation / Transition Used

I used a simple  animation:

- A flip effect using `rotation3DEffect` when a card turns face up or face down  
- A fade/scale effect when a card becomes matched  

These animations were learned from the SwiftUI animation lessons in the module and help the cards feel more interactive without being overly complex.



# Project Video 

Video Link: [INSERT LINK HERE]**

This video explains:
- How my MVVM structure works  
- How I connected the ViewModel to the Model  
- What animation I chose and where I added it in the code  



#  How to Run

1. Open the project in Xcode  
2. Run on the iPhone simulator  
3. Tap cards to flip  
4. Match all pairs  
5. Press **Shuffle Cards** to restart  



# Partner Info

- Hasan Dababo  
- Partner Group 3
