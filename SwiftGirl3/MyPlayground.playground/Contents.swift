//: Playground - noun: a place where people can play

import UIKit

var temp = 28

if temp >= 30{
    print("Too hot!")
}
else if temp <= 10{
    print("Too cold!")
}
else if temp >= 20 && temp <= 30 {
    print("Nice")
}
else{
    print("Good")
}


switch temp{
case 0...15:
    print("Too cold!")
case 16...20:
    print("Cool")
case 21...28:
    print("Nice")
default:
    print("Too hot!")
}

for index in 1...5{
    print("\(index) times 5 is \(index * 5)")
}

let numberOfLegs = ["spider": 8, "ant": 6, "cat": 4]
for (animalName, legCount) in numberOfLegs{
    print("\(animalName)s have \(legCount) legs")
}

let names = ["Eva", "Miru", "Toby", "John", "純華", "Micheal", "虎虎"]
for name in names{
    print("Hello! \(name)")
}

var sum:Int = 0
for number in 200...300{
    sum = sum + number
}
print("\(sum)")

//while temp == 28{
//    print("oh no!")
//}

//repeat {
//    print("oh no!")
//}while temp == 29




