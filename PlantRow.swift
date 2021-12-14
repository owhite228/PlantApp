//
//  PlantRow.swift
//  figuringthisout
//
//  Created by Olivia White on 11/29/21.
//

import SwiftUI

struct PlantRow: View {
    var plant: Plant
    var body: some View {
        HStack{
            
             plant.image
                .resizable()
                .frame(width: 50, height: 50)
             
            Text(plant.genus)
            
            Spacer()
        }
    }
}

struct PlantRow_Previews: PreviewProvider {
    static var previews: some View {
        Group {
        PlantRow(plant: plantList[0])
        PlantRow(plant: plantList[1])
        }
        .previewLayout(.fixed(width: 300, height: 70))
    }
}
