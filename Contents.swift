import Cocoa

class Plant {
    var genus = ""
    var variety = ""
    var condition = 0
    var waterInt = 0
    var whenWater = 0
    var whenFertilize = 30
    var watered = false
    var fertilized = false
    func water() {
        watered = true
    }
    func fertilize() {
        fertilized = true
    }
    func setCondition(cond: Int) {
        condition = cond
    }
}
var plantList: [Plant] = []
var cal1 = Plant()
cal1.genus = "Calathea"
cal1.variety = "White Fusion"
cal1.condition = 2
cal1.waterInt = 5
cal1.whenWater = cal1.waterInt
print(cal1.genus)
print(cal1.watered)
cal1.water()
print(cal1.watered)
print(cal1.fertilized)
cal1.fertilize()
print(cal1.fertilized)
print(cal1.condition)
cal1.setCondition(cond: 4)
print(cal1.condition)
plantList.append(cal1)
print(plantList)




//resources:
    // https://forums.swift.org/t/print-type-of-variable/15044 -> this was because i couldn't figure out how to get the plant list to initialize correctly and needed the data type of a plant object
    // https://docs.swift.org/swift-book/LanguageGuide/Methods.html -> couldn't remember how to write a function that needed to take an input when called
    //https://www.programiz.com/swift-programming/basic-input-output -> this is what i was using to figure out user input -> turns out it only works in command line tool files, which is not what i want for this project
