import SwiftUI

struct CircleImage: View {
    var image: Image
    
    var body: some View {
        image
        .clipShape(Circle())
        .overlay {
            Circle().stroke(.blue, lineWidth: 4)
        }
        .shadow(radius: 7)
    }
}

#Preview {
    CircleImage(image: Image("charleyrivers"))
}

