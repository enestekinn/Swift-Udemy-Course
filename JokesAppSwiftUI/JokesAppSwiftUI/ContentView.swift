//
//  ContentView.swift
//  JokesAppSwiftUI
//
//  Created by Enes Tekin on 21.03.2023.
//

import SwiftUI

struct ContentView: View{
    
    @ObservedObject var jokesVM = JokesViewModel()
    
    var body: some View {
        NavigationView {
            List(jokesVM.jokes){ element in
                Text(element.joke)
            }.navigationTitle(Text("Jokes App"))
            
                .toolbar {
                    Button {
                        addJoke()
                    } label: {
                        Text("Get New Joke")
                    }

                }
        }
        
    }
    func addJoke(){
        jokesVM.getJokes()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
