//: Playground - noun: a place where people can play

import UIKit



var numberA: Int? = 20

print(numberA!)

print(numberA! + 10)



var programmer: String? = "John"
print(programmer)

// Force unwrapping an optional

print(programmer!)




var unwrappedProgrammer = programmer!
print(unwrappedProgrammer)

var job: String? = "iOS Developer"

print(job!)

job = nil

//print(job!)

if job != nil {
    print(job!)
}







