//
//  ContentView.swift
//  Africa
//
//  Created by Gino Sesia on 07/07/2021.
//

import SwiftUI

struct ContentView: View {
    //MARK: - PROPERTIES
    
    //MARK: - BODY
    var body: some View {
        let animals: [Animal] = Bundle.main.decode("animals.json")

        NavigationView {
            List {
                CoverImageView()
                frame(height: 300)
                    .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                
                ForEach(animals) { animal in
                    AnimalListItemView(animal: animal)
                }
            }//: List
            .navigationBarTitle("Africa", displayMode: .large)
        }//: NavigationView
    }
}

//MARK: - PREVIEW
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().previewDevice("iPhone 11 Pro")
    }
}
