//
//  circleimage.swift
//  figuringthisout
//
//  Created by Olivia White on 11/18/21.
//

import SwiftUI

struct circleimage: View {
    var image: Image
    
    var body: some View {
        image
            .clipShape(Circle())
            .shadow(radius: 7)
    }
}

struct circleimage_Previews: PreviewProvider {
    static var previews: some View {
        circleimage(image: Image("calatheawf"))
    }
}
