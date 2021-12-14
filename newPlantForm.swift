//
//  newPlantForm.swift
//  figuringthisout
//
//  Created by Olivia White on 12/2/21.
//

import Foundation
import SwiftUI


struct newPlantForm: View {
    
    @State private var pl2 = plantList2
    
    @State private var genus1 = ""
    @State private var variety1 = ""
    @State private var condition1 = "One"
    @State private var days: Double = 1.0
    

      var body: some View {
        NavigationView {
          Form {
            TextField("Plant Genus", text: $genus1)
            TextField("Plant Variety", text: $variety1)
            Section(header: Text("Plant Care")) {
                Picker(selection: $condition1, label: Text("Condition")) {
                  ForEach(["One - nearly dead", "Two - not doing well", "Three - pretty average", "Four - doing pretty okay", "Five - thriving!"], id: \.self) {
                    Text($0).tag($0)
                  }
                }
                Slider(value: $days, in: 1...40, step: 1)
                Text("Water every \(days, specifier: "%.01f") days")
            }
            
            Button("Add Plant", action: {
                //something will go here?
            })
                
                /*
                @StateObject var plant = Plant()
                newPlant.genus = genus1
                newPlant.variety = variety1
                newPlant.condition = condition1
                newPlant.waterInt = days
                newPlant.whenWater = days
                newPlant.id = (plantList.count) + 1001
                */
 
          }.navigationBarTitle("Your New Plant", displayMode: .inline)
        }
      }
}

struct newPlantForm_Previews: PreviewProvider {
    static var previews: some View {
        newPlantForm()
    }
}

//https://swiftuirecipes.com/blog/styling-swiftui-form
    //used to build up the initial form for adding new plants

//https://www.hackingwithswift.com/quick-start/swiftui/how-to-create-a-slider-and-read-values-from-it
    //used when figuring out the slider for water-interval
//https://developer.apple.com/documentation/swiftui/slider
    //used for figuring out the "step" part of the slider so it counted by one

//resources I used while figuring out that I cannot update the json file and/or the plant object list :))))
//primary issue is this error: Missing argument for parameter 'from' in call
    //no consumable info on this error online (at least, nothing that I was able to understand)
    //https://www.hackingwithswift.com/books/ios-swiftui/adding-to-a-list-of-words
        //used this to try to simply add new values to list -> never worked
    //https://developer.apple.com/documentation/swiftui/managing-model-data-in-your-app
        //used this to make plant object an "observable object", changed all the code in newPlantForm and in plants, errored all over the place and didn't resolve "missing argument..." error
    //https://medium.com/@lkleung0531/ios-how-to-read-and-update-local-json-file-with-tableview-1b6c2a49e7b4
        //tried to implement a json decoder, everything errored, didn't resolve the initial error
    //https://www.ioscreator.com/tutorials/swiftui-add-rows-list-tutorial
        //this was to get that one error to go away, which didn't end up working bc it's outdated
            //(this usage for .append was phased out last year? apparently???)
    //https://developer.apple.com/forums/thread/114060
        //this one literally just says that json files can't be written to on swift ://

