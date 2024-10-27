import Foundation


struct CityWeather: Hashable, Codable {
    var id: Int
    var name: String
    var temp: Double
    var humidity: Int
    var description: String
}
