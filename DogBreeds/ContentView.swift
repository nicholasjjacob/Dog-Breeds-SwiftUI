//
//  ContentView.swift
//  DogBreeds
//
//  Created by Nicholas Jacob on 10/14/19.
//  Copyright © 2019 Nicholas Jacob. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            // breed title
            Text("Akita")
                .font(.custom("Paprus", size: 40))
                .fontWeight(.bold)
            ZStack {
                Rectangle().frame(width: 370, height: 420)
                    .cornerRadius(30)
                    .shadow(color: .white, radius: 30)
                Rectangle().frame(width: 350, height: 400)
                .cornerRadius(30)
                .shadow(color: .white, radius: 30)
                
                VStack {
                    // image
                    Image("akita")
                        .resizable()
                        .scaledToFit()
                        .cornerRadius(15)
                        .padding(6)
                        .background(LinearGradient(gradient: Gradient(colors: [.white, .black, .white, .black, .white]), startPoint: .top, endPoint: .bottom)).cornerRadius(10).padding()
                    // image description
                    Text("Akita is a muscular double coated dog of ancient Japanese lineage famous for her dignity, courage and loyalty.")
                        .lineLimit(10)
                        .multilineTextAlignment(.center)
                        .foregroundColor(.white)
                        .padding(20)
                }.padding(30)
            }
        }.background(Image("backgroundLines").resizable().frame(width: UIScreen.main.bounds.width, height: 1100))
    }
}





















struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
