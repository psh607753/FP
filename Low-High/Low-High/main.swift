//
//  main.swift
//  Low-High
//
//  Created by ridgeracer on 26/04/2020.
//  Copyright © 2020 ridgeracer. All rights reserved.
//

import Foundation

let answer = Int(arc4random() % 100) + 1
var count = 0

while true {

    let userInput = readLine()

    guard let unwrappedInput = userInput, let inputNumber = Int(unwrappedInput) else {
        print("Wrong")
        continue
    }

    if inputNumber == answer {
        print("Correct! : \(count)")
        break
    }

    if inputNumber > answer {
        print("High")
    }

    if inputNumber < answer {
        print("Low")
    }

    count += 1
}
