//
//  ContentView.swift
//  AsyncImageSwiftUI
//
//  Created by Enes Tekin on 20.03.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        NavigationView {
            VStack {
                AsyncImage(url: URL(string: "https://wallpaperaccess.com/full/1356237.jpg")) { image in
                    image.resizable()
                        .frame(width: 300, height: 300, alignment: .center)
                } placeholder: {
                    ProgressView()
                }

                
            List(superHeroArray) { superhero in
                Text(superhero.name)
                    .font(.title3)
                    .foregroundColor(.blue)
                
            }
            
        }.navigationTitle(Text("Super Hero Book"))
    }
}
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
