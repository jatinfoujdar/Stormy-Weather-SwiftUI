//
//  CityList.swift
//  Stormy-Weather-SwiftUI
//
//  Created by jatin foujdar on 27/10/24.
//

import SwiftUI

struct CityList: View {
    var body: some View {
        NavigationSplitView {
            List(cityWeathers) { cityWeather in
                NavigationLink {
                    ListDetail(city: cityWeather)
                }label:{
                    ListRow(cityWeather: cityWeather)
                }
            }
            .navigationTitle("Cities")
        }detail: {
            Text("Select a City")
        }
    }
}

#Preview {
    CityList()
}


