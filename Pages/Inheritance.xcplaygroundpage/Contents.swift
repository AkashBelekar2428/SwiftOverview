import UIKit
import Foundation

//MARK: Inheritance In Swift

//Type of inheritance :-
//1. Single Inheritance : A ->
//2. Multilevel : A -> B -> C
//3. Hierarchical :  A -> X, A -> Y
//4. Hybride Inheritance : Mix of Two or More above

//In Inhritance cant not be inheritance Value Or Data,  only inheritance of defination or Class

class person {
    var name: String = ""
    var age: Int = 0
    
    init(){
        print("I m Person Default init")
        age = 1
    }
    
    //Method
    func display() -> Void{
        print(name,age)
    }
}

var p1 = person()
p1.name = "Tukaram"
p1.age = 22
p1.display()
//-----------

//Child = Super // cant not be inhritance data on super to child on defination inhritance super to child
class student : person{ //student is child class and person is super class   we cant inheritance of value or data in super class. only inhritance for defination
                        // s1 = student()  s1 is object of student and p1 = person() p1 is object of person. when we create new class to existing class then this time to new or fresh create object.
    var rollnum: Int = 0
    
    override init() {
        //Override :- when we any code redeclear in child class. its called as override
        //Super.init :- when super class in initilizer (init()) call in child class. Then we need to call super.init
        // in child class we modify initilizer then we must need the call super class initilizer (super.init) in child class
        super.init()
         print("I m in student init")
        self.age = 5
    }
    
    //Method
    func displayStudentData(){
        print("student-->",name, age, rollnum)
    }
}
var s1 = student()
s1.rollnum = 101
s1.age = 12
s1.name = "Ramesh"
s1.displayStudentData()

print("---------------------------")
//Inhertitance person to teacher
class Teacher : person{
    var subject:String=""
    
    override init() {
        super.init()
        age = 18
        print("I am Teacher Default")
    }
    init(name:String,age:Int,subject:String) {
        super.init()
        self.name = name
        self.age = age
        self.subject = subject
        print("I am Teacher param init")
    }
    
    override func display() {
        super.display()
        print("I am Teacher, subject --> ",subject)
    }
    
}
var T1 = Teacher()
T1.subject = "English"
T1.name = "Salman"
T1.age = 55
T1.display()

