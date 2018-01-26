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
var tries = 1
var playAgain: String? = "Y"
var name: String




while playAgain == "Y" || playAgain == "y" {

    print("Please guess a number between 1 and 100. You have 5 guesses.")

    
    while guess == nil {
      print("Use a number please")
        guess = Int(readLine()!)
    }
while guess! != randomNumber && tries < 5{
    
    
    if randomNumber > guess! {
        print("The number was higher")
    }
    else if randomNumber < guess! {

        print("The number was lower")
    }

        print("Please guess again")
guess = Int(readLine()!)
    
    while guess == nil {
print("Please use a number")
        guess = Int(readLine()!)
    }
    tries += 1
    }
if randomNumber == guess! {
        print("YOU WON!!!!!!!")
    }
if randomNumber != guess!{
print("The actual number was \(randomNumber)")
    }

    randomNumber = Int(arc4random_uniform(100))
    tries = 1
    print("Would you like to play again? Y/N")
    playAgain = String(readLine()!)
    guess = Int(EMPTY)
    


}
