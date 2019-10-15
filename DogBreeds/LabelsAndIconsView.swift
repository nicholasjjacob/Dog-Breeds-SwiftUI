//
//  LabelsAndIconsView.swift
//  DogBreeds
//
//  Created by Nicholas Jacob on 10/15/19.
//  Copyright © 2019 Nicholas Jacob. All rights reserved.
//

import SwiftUI

struct LabelsAndIconsView: View {
    var body: some View {
        VStack(alignment: .leading) {
            ForEach(labelsAndIcons) { item in
                PositionAndModifier(label: item.label, icon: item.icon)
            }
        }.frame(maxWidth: 200, maxHeight: 350)
    }
}

struct Item: Identifiable {
    var id = UUID()
    var label: String
    var icon: String
}

let labelsAndIcons = [
    Item(label: "AKC Group", icon: "group"),
    Item(label: "Height", icon: "height"),
    Item(label: "Weight", icon: "weight"),
    Item(label: "Lifespan", icon: "lifespan"),
    Item(label: "Popularity", icon: "popularity")
]

struct PositionAndModifier: View {
    var label = ""
    var icon = ""
    
    var body: some View {
        HStack {
            Image(icon)
                .imageScale(.large)
                .frame(width: 32, height: 32)
                .padding(.leading, 20)
            Text(label)
                .font(.headline)
                .foregroundColor(.orange)
                .padding(.leading, 10)
        }.padding(10)
    }
}


struct LabelsAndIconView_Previews: PreviewProvider {
    static var previews: some View {
        LabelsAndIconsView().previewLayout(.sizeThatFits)
    }
}
