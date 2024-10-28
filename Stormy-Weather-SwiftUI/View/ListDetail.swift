import SwiftUI

struct ListDetail: View {
    @Environment(ModelData.self) var modelData
    var city: CityWeather

    var cityIndex : Int {
        modelData.cityWeathers.firstIndex(where: { $0.id == city.id })!
    }
    
    var body: some View {
        VStack {
            Text(city.name)
                .font(.largeTitle)
                .padding()
            
            CircleImage(image: city.image)
            .offset(y: 50)
            .padding(.bottom, 50)

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
        .navigationTitle(city.name) 
        .padding()
    }
}

#Preview {
    let modelData = ModelData()
    return ListDetail(city: ModelData().cityWeathers[0])
        .environment(modelData)
}
