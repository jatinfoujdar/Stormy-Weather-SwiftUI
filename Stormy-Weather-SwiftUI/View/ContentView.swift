//
//  ContentView.swift
//  Stormy-Weather-SwiftUI
//
//  Created by jatin foujdar on 27/10/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        CityList()
    }
}

#Preview {
    ContentView()
        .environment(ModelData())
}
