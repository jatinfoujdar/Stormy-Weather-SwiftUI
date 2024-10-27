//
//  CityList.swift
//  Stormy-Weather-SwiftUI
//
//  Created by jatin foujdar on 27/10/24.
//

import SwiftUI

struct CityList: View {
    var body: some View {
        List(cityWeathers){
             cityWeather in
                ListRow(cityWeather: cityWeather)
        }
        .navigationTitle("Cities")
    }
}

#Preview {
    CityList()
}
