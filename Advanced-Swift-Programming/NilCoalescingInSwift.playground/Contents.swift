//: Playground - noun: a place where people can play

import UIKit



var numberA: Int? = 10


var unwrappedNumberA: Int = numberA ?? 0 // if numberA contains nil, the default value is going to be 0

print(unwrappedNumberA)





var numberB: Int? = nil
let unwrappedNumberB: Int = numberB ?? 1 // if numberB contains nil, the default value is going to be 1



var numberC: Int? = nil
var unwrappedNumberC: Int = numberC ?? 20 // if numberC contains nil, the default value is going to be 20

print(unwrappedNumberC)










