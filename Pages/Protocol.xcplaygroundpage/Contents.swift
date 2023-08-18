//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"


//MARK: Protocol
//protocol can not be instantiated. i.e. we cant not create object of protocol.
protocol MyProtocol{ // Abstract Class
    
    //when we create variable in protool then we need to use get and set properties. we cant take a default value in variable
    var a: Int {get set} // Read write variable
     //get:- read only variable. In get only one time set the value and its read only
    // set is optional. change value alot of time when we use set properties.
    func process() -> Int // No code on body its calles as abstact Method
}

class Math : MyProtocol {
    //when we will declar variable in protocol then we must need to redeclear variable in class and take a default value
    var a: Int = 0
    
    func process() -> Int {
        return a * a
    }
}

//Create object of class
var m1 = Math()
m1.a = 5
print(m1.process())


//We cant not create object of protocol
var m2:MyProtocol = Math()
m2.a = 6
print(m2.process())
