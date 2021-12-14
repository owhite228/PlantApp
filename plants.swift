//
//  plants.swift
//  figuringthisout
//
//  Created by Olivia White on 11/22/21.
//

import Foundation
import SwiftUI

class Plant: Identifiable, Codable, ObservableObject {
    var genus: String
    var variety: String
    var condition: String
    var waterInt: Double
    var whenWater: Double
    var whenFertilize = 30
    var watered: Bool
    var fertilized: Bool
    var id: Int
    /*
    func water() {
        watered = true
    }
    func fertilize() {                          //these are the plant care functions -> commented out bc this was originally a struct
        fertilized = true                           //structs don't take functions, so i was going to make an class extension of Plant
    }                                                   which had the functions, but then everything w/the JSON file/plant list got
    func setCondition(cond: Int) {                          weird so i never had the chance
        condition = cond
    }
     */
    private var imageName: String
    var image: Image {
        Image(imageName)
    }
}

//var plantList: [Plant] = []
    //no idea what i was trying to do here

