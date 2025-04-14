//: Playground - noun: a place where people can play

import UIKit


var power: Int?

power = 200

print(power ?? 10)

//power = nil


print(power!)




let computerScreen: Optional<String> = Optional.none
let computerCPU: Optional<String> = Optional.some("Corei7")

print(computerScreen ?? "Nothing Found")
print(computerCPU)


switch computerScreen {
case let Optional.none(value):
    print("No CPU \(value)")
case let Optional.some(value):
    print("our computer has a CPU \(value)")
}




switch computerCPU {
case let Optional.none(value):
    print("No CPU \(value)")
case let Optional.some(value):
    print("our computer has a CPU \(value)")
}














