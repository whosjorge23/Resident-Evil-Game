//
//  ContentView.swift
//  Resident Evil Game
//
//  Created by Giorgio Giannotta on 19/03/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            StoryView()
                .navigationTitle("Resident Evil")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
