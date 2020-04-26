//
//  main.swift
//  Low-High
//
//  Created by ridgeracer on 26/04/2020.
//  Copyright © 2020 ridgeracer. All rights reserved.
//

import Foundation

let answer = 50//Int(arc4random() % 100) + 1
var count = 0


//1. 먼저 루프 제거


func inputAndCheck() -> Bool{

    let userInput = readLine()

    guard let unwrappedInput = userInput, let inputNumber = Int(unwrappedInput) else {
        print("Wrong")
        return true
    }

    if inputNumber == answer {
        print("Correct! : \(count)")
        return false
    }

    if inputNumber > answer {
        print("High")
    }

    if inputNumber < answer {
        print("Low")
    }

    return true
}


func countingLoop(needContinue: () -> Bool){
    
    var count = 0
    while true {
        if !needContinue() { break }
        count += 1
    }
    
}

countingLoop(needContinue: inputAndCheck)

