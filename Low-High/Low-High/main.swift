//
//  main.swift
//  Low-High
//
//  Created by ridgeracer on 26/04/2020.
//  Copyright © 2020 ridgeracer. All rights reserved.
//

import Foundation

let answer = 50//Int(arc4random() % 100) + 1



//1. 먼저 루프 제거
//while -> func 로 변경

func inputAndCheck() -> Bool{

    let userInput = readLine()

    guard let unwrappedInput = userInput, let inputNumber = Int(unwrappedInput) else {
        print("Wrong")
        return true
    }

    if inputNumber == answer {
//        print("Correct! : \(count)")
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


func corrected(_ count:Int) -> Void{
    print("count = \(count)")
}


// needContinue : 함수
// finished : 함수

func countingLoop(_ needContinue: () -> Bool, _ finished : (Int) -> Void){

    func counter(_ c:Int) -> Int{
        
        if !needContinue(){
            return c
        }
        
        return counter(c + 1)
    }
    
    let count = counter(0)
    
    finished(count)
    

}

countingLoop(inputAndCheck,corrected)




////변수에 클로저
//var hello : () -> Void = {print("클로저")}
//
//
//func myTest() -> Void{
//    print("함수")
//}
//
//
////변수에 함수
//var hello2 = myTest
//
//
//
//
//
//
//func runClosure(_ aClosure: () -> Void){
//    aClosure()
//}
//
//runClosure(hello)
//runClosure(hello2)
//
//
//class MyClass{
//
//    var prop : (() -> ())!
//
//    func cF( _ arg : @escaping () -> ()){
//        self.prop = arg
//    }
//}
