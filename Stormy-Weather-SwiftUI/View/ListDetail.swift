import SwiftUI

struct ListDetail: View {
    @Environment(ModelData.self) var modelData
    var city: CityWeather

    var cityIndex : Int {
        modelData.cityWeathers.firstIndex(where: { $0.id == city.id })!
    }
    
    var body: some View {
        @Bindable var modelData = modelData
        VStack {
            Text(city.name)
                .font(.largeTitle)
            
            CircleImage(image: city.image)
            .offset(y: 50)
            .padding(.bottom, 50)
            HStack{
                Text("Temperature: \(city.temp)°C")
                    .font(.title2)
                Spacer()
                FavoriteButton(isSet: $modelData.cityWeathers[cityIndex].isFavorite)
            }
            .padding()
                    Text("Humidity: \(city.humidity)%")
                        .font(.title3)
                    Text("Description: \(city.description)")
                        .font(.body)
        
            
            if city.isFavorite {
                Spacer()
                Text("❤️ This city is a favorite!")
                    .font(.headline)
                    .foregroundColor(.yellow)
            }

            Spacer()
        }
        .navigationTitle(city.name) 
        .padding()
        .background(
            LinearGradient(gradient: Gradient(colors: [Color.yellow, Color.purple]), startPoint: .top, endPoint: .bottom)
                        .edgesIgnoringSafeArea(.all)
                )
    }
}

#Preview {
    let modelData = ModelData()
    return ListDetail(city: ModelData().cityWeathers[0])
        .environment(modelData)
}
