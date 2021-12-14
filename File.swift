//
//  File.swift
//  figuringthisout
//
//  Created by Olivia White on 12/9/21.
//

import Foundation


class Plant2: ObservableObject {
    @Published var genus: String
    @Published var variety: String
    @Published var condition: Int
    @Published var waterInt: Double
    @Published var whenWater: Double
    @Published var whenFertilize = 30
    @Published var watered = false
    @Published var fertilized = false
    @Published var id = plantList2.count + 1001


    init(genus: String, variety: String, condition: Int, waterInt: Double, whenWater: Double) {
        self.genus = genus
        self.variety = variety
        self.condition = condition
        self.waterInt = waterInt
        self.whenWater = whenWater
        
    }
}


let p1 = Plant2(genus: "Calathea", variety: "White Fusion", condition: 2, waterInt: 4, whenWater: 4)
var plantList2: [Plant2] = []

//this file was my attempt to make the plant object an "observable object" this is not referenced at all throughout the actual project files, but I left it to show the efforts i put in to make this work lol
//essential, i read that if it was an observable object with @published variables, it would reference it throughout the different files w/out erroring, but when i actually implemented it and changed all the variable names to match this file, the error was the same, so it didn't really do anything different than the plants.swift file
//this one also had an init function, which i thought would make it easier to pass object attributes, but again, it didn't fix anything




