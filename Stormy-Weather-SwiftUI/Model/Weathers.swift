import Foundation
import SwiftUI


struct CityWeather: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var temp: Double
    var humidity: Int
    var description: String
    var isFavorite: Bool
    
    private var imageName: String
    var image: Image{
        Image(imageName)
    }
}
