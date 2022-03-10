//
//  RockPaperScissors.swift
//
//  Created by Abdul Basit 
//  Created on 2022-03-07
//  Version 1.0
//  Copyright (c) 2022 Abdul Basit. All rights reserved.
//
//  This program makes the user play rock paper scissors with the computer.
//

import Foundation

// This function generates a random rock, paper or scissors choice as the
// bot's choice
func botChoice() -> String {

    let lowerNum = 0
    let higherNum = 2
    let randomInt = Int.random(in: lowerNum...higherNum)

    var botChoiceValue = ""

    switch randomInt {
    case 0:
      botChoiceValue = "rock"
    case 1:
      botChoiceValue = "paper"
    case 2:
      botChoiceValue = "scissors"
    default:
      break
    }

    return botChoiceValue
}

// This function returns who won
func whoWins(userChoice: String, botChoice: String) -> String {

    let whoWinsValue: String

    if userChoice == botChoice {
        whoWinsValue = "Tie. "
    } else if (userChoice == "rock" && botChoice == "scissors")
              || (userChoice == "scissors" && botChoice == "paper")
              || (userChoice == "paper" && botChoice == "rock") {

        whoWinsValue = "You win! "
    } else {
        whoWinsValue = "You lose :( "
    }

    return whoWinsValue
}

// Takes in user input, makes sure it is rock paper or scissors, finds the
// random bot choice and who wins. Then display it to the user.
// User prompt
print("Enter rock, paper or scissors: ", terminator: "")

// Gathers the user input and makes sure it isn't empty
guard let userChoice = readLine(), !userChoice.isEmpty else {
    print("Please enter a correct input.")
    print("\nDone.")
    exit(001)
}

// Validates that the user entered rock, paper or scissors
switch userChoice {
case "rock", "paper", "scissors":
    break
default:
    print("Please enter a correct input.")
    print("\nDone.")
    exit(001)
}

// Gets bot choice and who won
let botChoiceValue = botChoice()
let whoWinsValue = whoWins(userChoice: userChoice, botChoice: botChoiceValue)

// Display it to the user
print("\(whoWinsValue)The computer's choice was \(botChoiceValue).")

print("\nDone.")
