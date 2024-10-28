//
//  CityList.swift
//  Stormy-Weather-SwiftUI
//
//  Created by jatin foujdar on 27/10/24.
//

import SwiftUI

struct CityList: View {
    @Environment(ModelData.self) var modelData
    @State private var showFavoritesOnly = false
    
    var filteredCity : [CityWeather] {
        modelData.cityWeathers.filter { cityWeather in
            (!showFavoritesOnly || cityWeather.isFavorite)
        }
    }
    
    var body: some View {
        NavigationSplitView {
            
            List{
                Toggle(isOn: $showFavoritesOnly){
                    Text("Favorites only")
                    
                }
                ForEach(filteredCity) { cityWeather in
                    NavigationLink {
                        ListDetail(city: cityWeather)
                    }label:{
                        ListRow(cityWeather: cityWeather)
                    }
                }
            }
            .animation(.default, value: filteredCity)
            .navigationTitle("Cities")
        }detail: {
            Text("Select a City")
        }
    }
}

#Preview {
    CityList()
        .environment(ModelData())
}


