//
//  PlantList.swift
//  figuringthisout
//
//  Created by Olivia White on 11/30/21.
//

import SwiftUI

struct PlantList: View {
    var body: some View {
        NavigationView {
            List(plantList) {plant in
                NavigationLink(destination: indivPlant(plant: plant)) {
                    PlantRow(plant: plant)
                }
            }
            .navigationTitle("My Plants!")
            .toolbar{
                ToolbarItem(placement: .navigationBarTrailing) {
                    HStack {
                        Text("")
                        NavigationLink (destination: newPlantForm()) {
                            Image(systemName: "plus")
                                .font(.title2)
                        }
                    }
                }
            }
        }
    }
}

struct PlantList_Previews: PreviewProvider {
    static var previews: some View {
        PlantList()
    }
}


//https://www.hackingwithswift.com/books/ios-swiftui/working-with-identifiable-items-in-swiftui
    // used to figure out IDs
        //learned that ids have to be 4 digits? unsure if that's actually the case, but when i had 3 digit ids (001, 002, 003) it didn't error, but it had the first two correct, then calathea down the line for the last four
        //chucking a 1 in front of all the ids so they were 4 digits (1001, 1002, 1003) fixed it so they appear correctly in the list

//https://developer.apple.com/documentation/swiftui/navigationlink
    //used this while fighting through the navigation link

//big trouble getting the images to show up but figured it out!!!! Ended up being some variable name issues between the json file and the plant object file

//what's currently making me want to die :)
    //the navigation b/w PlantList and indivPlant
    // I FIGURED IT OUT!!!!!!!!!!
    //https://medium.com/app-makers/navigationlink-in-swiftui-swift-3a44a258da09
        //used this for figuring a basic nav link
    //https://www.simpleswiftguide.com/how-to-add-navigationview-to-list-in-swiftui-and-show-detail-view-using-navigationlink/
        //used this to figure out how to implement a nav link w/a list

//https://medium.com/@adamstrickland.osu/swiftui-navigating-from-one-view-to-another-with-navigationview-31ee4bce7498
    //used this to add the new plant button to the bottom of the plant list
        //HAHA took this out 12 hrs later but i'll leave the source

//https://stackoverflow.com/questions/63602263/swiftui-toolbaritem-doesnt-present-a-view-from-a-navigationlink
    //tbh i don't even remember what i used this for but i definitely used it

//https://levelup.gitconnected.com/cracking-the-navigation-bar-secrets-with-swiftui-30e9b019502c
    //used this to figure out how to get the new plant arrow at the top :/
        //bc that's what needed fixing in this project ://
