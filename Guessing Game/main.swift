//
//  main.swift
//  Guessing Game
//
//  Created by Christian Lenberger on 1/23/18.
//  Copyright © 2018 Interapt. All rights reserved.
//

import Foundation

//Generate a random number
var randomNumber = Int(arc4random_uniform(100))
var guess: Int?


//Ask user for input
print("Please guess a number")
//Take user input
for _ in 0...4{
guess = Int(readLine()!)!

// They guessed correctly

if randomNumber == guess {
    print("YOU WON!!!!!!!")
} else if randomNumber > guess! {
    print("The number was higher")
} else if randomNumber < guess! {
print("The number was lower")
    }

}

print("The actual number was \(randomNumber), sorry pal.")

//Determine wrong or right (Loop until correct)

//If correct ask if they want to play again

//If incorrect tell them the correct answer and ask them to play again

