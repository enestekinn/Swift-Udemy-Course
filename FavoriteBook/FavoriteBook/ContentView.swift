//
//  ContentView.swift
//  FavoriteBook
//
//  Created by Enes Tekin on 18.03.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List {
                ForEach(myFavorites) { favorite in
                    Section(header: Text(favorite.title)) {
                        ForEach(favorite.elements) { element in
                            NavigationLink {
                                DetailsView(chosenFavoriteElement: element)
                            } label: {
                                Text(element.name)
                            }
                            
                            
                            
                        }
                    }
                }
            }.navigationTitle("Favorite Book")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
