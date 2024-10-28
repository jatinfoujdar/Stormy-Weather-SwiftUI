//
//  ListRow.swift
//  Stormy-Weather-SwiftUI
//
//  Created by jatin foujdar on 27/10/24.
//

import SwiftUI

struct ListRow: View {
    var cityWeather : CityWeather
    var body: some View {
            HStack {
                  cityWeather.image
                    .resizable()
                    .frame(width: 50, height: 50)
                Text(cityWeather.name)
                    .font(.headline)
                Spacer()
               
                if cityWeather.isFavorite{
                    Image(systemName: "star.fill")
                        .foregroundStyle(.yellow)
                }
        }
    }
}

#Preview {
    let cityWeathers = ModelData().cityWeathers
    return Group{
        ListRow(cityWeather: cityWeathers[0])
        ListRow(cityWeather: cityWeathers[1])
    }
}
