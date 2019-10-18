//
//  ContentView.swift
//  DogBreeds
//
//  Created by Nicholas Jacob on 10/14/19.
//  Copyright © 2019 Nicholas Jacob. All rights reserved.
//

import SwiftUI

struct DetailView: View {
    
    var dogBreedData: BreedData
    
    var body: some View {
        VStack (spacing: 0) {
            // breed title
            Text(dogBreedData.breed)
                .font(.custom("Helvetica", size: 30))
                .fontWeight(.bold)
                .foregroundColor(.white)
            ZStack {
                Rectangle().frame(width: 370, height: 420)
                    .cornerRadius(30)
                    .shadow(color: .init(white: 0.8), radius: 30)
                Rectangle().frame(width: 350, height: 400)
                .cornerRadius(30)
                .shadow(color: .init(white: 0.8), radius: 30)
                
                VStack {
                    // image
                    Image(dogBreedData.imageName)
                        .resizable()
                        .scaledToFit()
                        .cornerRadius(15)
                        .padding(6)
                        .background(LinearGradient(gradient: Gradient(colors: [.white, .black, .white, .black, .white]), startPoint: .top, endPoint: .bottom)).cornerRadius(10).padding()
                    // image description
                    Text(dogBreedData.description)
                        .lineLimit(10)
                        .multilineTextAlignment(.center)
                        .foregroundColor(.white)
                }.padding(35)
            }
            Spacer()
            HStack {
                LabelsAndIconView()
                HStack {
                    VStack(alignment: .leading) {
                        DisplayDataLabels(label: dogBreedData.group)
                        DisplayDataLabels(label: dogBreedData.height)
                        DisplayDataLabels(label: dogBreedData.weight)
                        DisplayDataLabels(label: dogBreedData.lifeExpectancy)
                        DisplayDataLabels(label: dogBreedData.breedPopularity)
                    }
                }
            }
        }.background(Image("backgroundLines")
            .resizable()
            .frame(width: UIScreen.main.bounds.width, height: 1100))
    }
}

struct DisplayDataLabels: View {
    var label = ""
    
    var body: some View {
        VStack {
            Text(label)
                .font(.headline)
                .foregroundColor(.white)
                .padding(.leading, 10)
        }.padding(22)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(dogBreedData: breeds[2])
    }
}
