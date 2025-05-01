import UIKit

var greeting = "Hello, playground"

//Q1
//var score:Int = nil
//score=90

//Q2
var score:Int? = nil
score=90

//Q3
func printstring(_ optionalString: String?){
    if let unwrappedString = optionalString{
        print(unwrappedString)
    }else {
        print("No value")
    }
}

let mystring:String = "Hello"
let nilstring:String?=nil

printstring(mystring)
printstring(nilstring)

//Q4
func halfDouble(_ optionalDouble: Double?) -> Double {
    if let value = optionalDouble {
        return value / 2.0
    }else {
        return 0.0
    }
}

let result1 = halfDouble(10.0)
print(result1)


let result2 = halfDouble(nil)
print(result2)

//Q5
let optionalInt:Int? = 42

if let unwrappedInt = optionalInt {
    print("the wrapped int is \(unwrappedInt)")
}
else {
    print("optional string is nil")
}

let optionalInt2:Int? = nil

if let unwrappedInt = optionalInt2 {
    print("the wrapped int is \(unwrappedInt)")
}
else {
    print("optional string is nil")
}

//Q6
class Book {
    var title:String
    var author:String?
    
    init(title:String, author:String? = nil){
        self.title = title
        self.author = author
    }
}

let mybook = Book(title: "The Title of book",author: "Roman")
let anotherbook = Book(title: "The title")

if let authorname = mybook.author {
    print("Author \(authorname)");
}else{
    print("Author not available")
}

if let authorname = anotherbook.author {
    print("Author \(authorname)");
}else{
    print("Author not available")
}

//Q7
func getValue(from dictionary: [String: Int]?, forKey key: String) -> Int {
    guard let dict = dictionary, let value = dict[key] else {
        return -1
    }
    return value
}

let myDictionary: [String: Int]? = ["apple": 1, "banana": 2, "cherry": 3]
let nilDictionary: [String: Int]? = nil

print(getValue(from: myDictionary, forKey: "banana"))
print(getValue(from: myDictionary, forKey: "grape"))
print(getValue(from: nilDictionary, forKey: "apple"))

//Q8

func getFirstWord(from sentence: String?) -> String {
    guard let sentence = sentence, !sentence.isEmpty else {
        return "No words"
    }

    let words = sentence.components(separatedBy: .whitespacesAndNewlines)

    guard let firstWord = words.first, !firstWord.isEmpty else {
        return "No words"
    }

    return firstWord
}

print(getFirstWord(from: "Hello world!"))
print(getFirstWord(from: "  This is a test."))
print(getFirstWord(from: ""))
print(getFirstWord(from: " "))
print(getFirstWord(from: nil))

//Q9

struct User {
    var email: String?

    func getEmail() -> String {
        if let validEmail = email, !validEmail.isEmpty {
            return validEmail
        } else {
            return "No email provided"
        }
    }
}

let user1 = User(email: "test@example.com")
let user2 = User(email: nil)
let user3 = User(email: "")

print(user1.getEmail())
print(user2.getEmail())
print(user3.getEmail())

var user4 = User(email: "another@email.net")
user4.email = nil
print(user4.getEmail())

//Q10
class BankAccount {
    var balance: Double

    init?(initialBalance: Double) {
        if initialBalance < 0 {
            return nil
        }
        self.balance = initialBalance
    }
}

if let account1 = BankAccount(initialBalance: 100.0) {
    print("Account created with balance: \(account1.balance)")
} else {
    print("Failed to create account (negative balance).")
}

if let account2 = BankAccount(initialBalance: -50.0) {
    print("Account created with balance: \(account2.balance)")
} else {
    print("Failed to create account (negative balance).")
}

if let account3 = BankAccount(initialBalance: 0.0) {
    print("Account created with balance: \(account3.balance)")
} else {
    print("Failed to create account (negative balance).")
}
//Q11

struct User {
    var username: String

    init?(username: String) {
        guard username.count >= 5 else {
            return nil
        }
        self.username = username
    }
}

if let user1 = User(username: "johnny") {
    print("User created: \(user1.username)")
} else {
    print("Invalid username (too short).")
}

if let user2 = User(username: "john") {
    print("User created: \(user2.username)")
} else {
    print("Invalid username (too short).")
}

if let user3 = User(username: "username") {
    print("User created: \(user3.username)") 
}else {
    print("Invalid username (too short).")
}
