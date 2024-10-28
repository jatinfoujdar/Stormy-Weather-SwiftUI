//
//  CityList.swift
//  Stormy-Weather-SwiftUI
//
//  Created by jatin foujdar on 27/10/24.
//

import SwiftUI

struct CityList: View {
    @State private var showFavoritesOnly = false
    
    var filteredCity : [CityWeather] {
        cityWeathers.filter { cityWeather in
            (!showFavoritesOnly || cityWeather.isFavorite)
        }
    }
    
    var body: some View {
        NavigationSplitView {
            List(filteredCity) { cityWeather in
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


