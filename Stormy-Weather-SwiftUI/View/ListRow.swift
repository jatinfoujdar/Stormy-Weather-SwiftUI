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
        VStack {
            HStack {
                Text(cityWeather.name)
                    .font(.headline)
                Spacer()
                Image(systemName: "cloud.sun.fill")
                    .font(.title)
            }
            .padding()
        }
    }
}

#Preview {
    ListRow(cityWeather: cityWeathers[0])
    ListRow(cityWeather: cityWeathers[1])

}
