//
//  ListDetail.swift
//  Stormy-Weather-SwiftUI
//
//  Created by jatin foujdar on 27/10/24.
//

import SwiftUI

struct ListDetail: View {
    var city : Weathers
    var body: some View {
        VStack {
            Image(systemName: city.name)
                .font(.largeTitle)
            Text(city.name)
                .font(.title)
            Text("Temperature: \(city.temp)")
            Text("Humidity: \(city.humidity)")
            Text("Description: \(city.description)")
        }
    }
}

#Preview {
    ListDetail(city: Weathers[0])
}
