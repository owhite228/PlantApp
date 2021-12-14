//
//  indivPlant.swift
//  figuringthisout
//
//  Created by Olivia White on 11/30/21.
//

import SwiftUI

struct indivPlant: View {
    
    @State private var cond = 1.0
    
    var plant: Plant
    
    var body: some View {
        ScrollView {
            Image("greenbkg")
                .resizable()
                .scaledToFit()
                .frame(alignment: .top)
            
            circleimage(image: plant.image)
                .offset(y: -130)
                .padding(.bottom, -130)
            
            VStack(alignment: .leading) {
                Text(plant.genus)
                    .font(.title)
                HStack {
                    Text(plant.variety)
                    Spacer()
                    Text(plant.condition)
                    
            }
                .font(.subheadline)
                .foregroundColor(.green)
                Divider()
                Text("About your plant:")
                    .font(.title2)
                Text("\(String(plant.whenWater)) days until next water")
                    .font(.system(size: 15))
                Text("Water every \(String(plant.waterInt)) days")
                    .font(.system(size: 10))
                Divider()
                Spacer()
                VStack{
                    Button("Water", action: {
                        //something will go here?
                    })
                    Spacer()
                    Button("Fertilize", action: {
                        //something will go here?
                    })
                    Slider(value: $cond, in: 1...5, step: 1)
                    Button("Set new condition: \(cond, specifier: "%.01f")", action:{
                        //something will go here
                    })
                }
        }
        .padding()
        }
        .navigationTitle(plant.genus + " " + plant.variety)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct indivPlant_Previews: PreviewProvider {
    static var previews: some View {
        indivPlant(plant: plantList[0])
    }
}


//issue with the images: they were v huge lol I needed to resize all of them

//https://stackoverflow.com/questions/24161336/convert-int-to-string-in-swift
    //used to figure out how to convert strings to ints



//Photo by <a href="https://unsplash.com/@sincerelymedia?utm_source=unsplash&utm_medium=referral&utm_content=creditCopyText">Sincerely Media</a> on <a href="https://unsplash.com/s/photos/sage-green?utm_source=unsplash&utm_medium=referral&utm_content=creditCopyText">Unsplash</a>

//https://www.simpleswiftguide.com/swiftui-font-tutorial/
    //used for font/font size


