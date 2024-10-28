import SwiftUI

struct ListDetail: View {
    var city: CityWeather

    var body: some View {
        VStack {
            Text(city.name)
                .font(.largeTitle)
                .padding()

            city.image
                .resizable()
                .scaledToFit()
                .frame(height: 200)
                .padding()

            Text("Temperature: \(city.temp)°C")
                .font(.title2)
            Text("Humidity: \(city.humidity)%")
                .font(.title3)
            Text("Description: \(city.description)")
                .font(.body)
            
            if city.isFavorite {
                Text("❤️ This city is a favorite!")
                    .font(.headline)
                    .foregroundColor(.yellow)
            }

            Spacer()
        }
        .navigationTitle(city.name) // Set the navigation title to the city name
        .padding()
    }
}

#Preview {
    // Use a sample city for previewing
    ListDetail(city: cityWeathers[0])
}
