//
//  ListView.swift
//  DogBreeds
//
//  Created by Nicholas Jacob on 10/17/19.
//  Copyright © 2019 Nicholas Jacob. All rights reserved.
//

import SwiftUI

struct ListView: View {
    var body: some View {
        NavigationView {
            List(breeds) {
                breed in NavigationLink(destination: DetailView(dogBreedData: breed)) {
                    return RowView(breedData: breed)
                }
            }.navigationBarTitle(Text("Breeds"), displayMode: .large)
        }
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
