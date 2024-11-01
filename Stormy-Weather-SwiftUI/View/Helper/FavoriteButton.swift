//
//  FavoriteButton.swift
//  Stormy-Weather-SwiftUI
//
//  Created by jatin foujdar on 28/10/24.
//

import SwiftUI

struct FavoriteButton: View {
    @Binding var isSet : Bool
    var body: some View {
        Button {
            isSet.toggle()
        } label: {
            Label("Toggle Favorite", systemImage: isSet ? "star.fill" : "star")
                .labelStyle(.iconOnly)
                .foregroundStyle(isSet ? .yellow : .black)
               
        }
    }
}

#Preview {
    FavoriteButton(isSet: .constant(true))
}
