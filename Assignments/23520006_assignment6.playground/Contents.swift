import Cocoa

//1
class Car {
    var brand: String
    var model: String
    var year: Int

    init(brand: String, model: String, year: Int) {
        self.brand = brand
        self.model = model
        self.year = year
    }
}

let car = Car(brand: "Honda", model: "Hero", year: 2000)
print("Car Brand: \(car.brand), Model: \(car.model), Year: \(car.year)")

//2
class Car1 {
    var brand: String
    var model: String
    var year: Int

    init(brand: String, model: String, year: Int) {
        self.brand = brand
        self.model = model
        self.year = year
    }

    func displayDetails() {
        print("Brand: \(brand), Model: \(model), Year: \(year)")
    }

    var carAge: Int {
        return 2025 - year
    }
}

let car1 = Car1(brand: "Honda", model: "Hero", year: 2020)
car1.displayDetails()
print("Car Age: \(car1.carAge) years")

//3
class Ec: Car1 {
    var batteryCapacity: Int

    init(brand: String, model: String, year: Int, batteryCapacity: Int) {
        self.batteryCapacity = batteryCapacity
        super.init(brand: brand, model: model, year: year)
    }

    override func displayDetails() {
        super.displayDetails()
        print("Battery Capacity: \(batteryCapacity) kWh")
    }
}

let electricCar = Ec(brand: "Tesla", model: "Model 3", year: 2022, batteryCapacity: 75)
electricCar.displayDetails()

//4
class Animal {
    var name: String
    var age: Int

    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
}

class Dog: Animal {
    var breed: String

    init(name: String, age: Int, breed: String) {
        self.breed = breed
        super.init(name: name, age: age)
    }
}

let dog = Dog(name: "tommy", age: 3, breed: "black")
print("Dog Name: \(dog.name), Age: \(dog.age), Breed: \(dog.breed)")

//5
class Laptop {
    var brand: String
    var processor: String
    var ramSize: Int

    init(brand: String, processor: String, ramSize: Int) {
        self.brand = brand
        self.processor = processor
        self.ramSize = ramSize
    }
}

class GamingLaptop: Laptop {
    var graphicsCard: String

    init(brand: String, processor: String, ramSize: Int = 16, graphicsCard: String) {
        self.graphicsCard = graphicsCard
        super.init(brand: brand, processor: processor, ramSize: ramSize)
    }
}

let lap = GamingLaptop(brand: "Hp", processor: "Intel i5", graphicsCard: "NVIDIA RTX 3050")
print("Gaming Laptop Brand: \(lap .brand), Processor: \(lap .processor), RAM: \(lap .ramSize)GB, Graphics Card: \(lap .graphicsCard)")

//6
let arr = [1, -3, 50, 72, -95, 115]
print(arr.contains(72))
print(arr.contains(95))

//7
var ans = Array(repeating: 0, count: 20)
print(ans)

//8
let fruits = ["Apple", "Banana", "Orange", "Mango"]
if fruits.isEmpty 
{
    print("array is empty.")
} 
else 
{
    print("array contains \(fruits.count) fruits.")
}


//9
var cri = ["Sachine", "Rahul", "Rohit", "Virat"]
cri[0] = "Yuvraj"
cri.append("Shubhaman")
cri += ["Ravindra", "Hardik"]
cri.insert("Suresh", at: 5)
cri.remove(at: 4)
cri.removeLast()
print(cri)

//10
let nameAge = [["Sachine", "Rahul", "Rohit", "Virat"], [47, 42, 35, 36]]
print("First Cricketer: \(nameAge[0][0]), Age: \(nameAge[1][0])")

//11
var scores = ["Sachine": 50000, "Hardik": 4000, "Ravindra": 8000]
print(scores)

//12
let oldScore = scores["Hardik"] ?? 0
scores["Virat"] = 25000
scores["Hardik"] = 9000
print("Old score of Hardik: \(oldScore)")
print(scores)

//13
if let removedScore = scores.removeValue(forKey: "Sachine") {
    print("Removed Sachine's score: \(removedScore)")
}
print(scores)

//14
let keys = Array(scores.keys)
let values = Array(scores.values)
print("Cricketers: \(keys)")
print("Scores: \(values)")

//15

let cities = ["New York", "London", "Tokyo", "Paris", "Berlin"]
for city in cities {
    print(city)
}

//16
let number = 5
var factorial = 1
for i in 1...number {
    factorial *= i
}
print("Factorial of \(number) is \(factorial)")

//17
let vehicles = ["unicycle": 1, "bicycle": 2, "tricycle": 3, "quad bike": 4]
for (vehicle, wheels) in vehicles {
    print("\(vehicle) has \(wheels) wheels")
}

//18
let numbers = 29
var isPrime = true
var i = 2
while i <= numbers / 2 {
    if numbers % i == 0 {
        isPrime = false
        break
    }
    i += 1
}
print(isPrime ? "Prime" : "Not prime")

//19
var num = 1234
var reversed = 0
while num != 0 {
    let digit = num % 10
    reversed = reversed * 10 + digit
    num /= 10
}
print("Reversed number: \(reversed)")

//20
var num1 = 153
var sum = 0
let temp = num1
let digitCount = String(num1).count

while num1 != 0 {
    let digit = num1 % 10
    sum += Int(pow(Double(digit), Double(digitCount)))
    num1 /= 10
}

print(sum == temp ? "Armstrong Number" : "Not Armstrong Number")



