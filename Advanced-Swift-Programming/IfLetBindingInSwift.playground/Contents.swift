//: Playground - noun: a place where people can play

import UIKit



let personName: String? = "John"
var personJob: String? = "iOS developer"
var personAge: Int? = 25



if let unwrappedPersonName: String = personName {
    print(unwrappedPersonName)
} else {
    print("personName is nil")
}



if let unwrappedPersonJob = personJob {
    print(unwrappedPersonJob)
} else {
    print("personJob is nil")
}



if let unwrappedPersonAge = personAge {
    print(unwrappedPersonAge)
} else {
    print("personAge is nil")
}



// unwrap multiple values

if let unwrappedPersonName = personName, unwrappedPersonJob = personJob, unwrappedPersonAge = personAge {
    print("\(unwrappedPersonName), \(unwrappedPersonJob), \(unwrappedPersonAge)")
} else {
    print("nil for all")
}






















