//
//  ListRow.swift
//  Stormy-Weather-SwiftUI
//
//  Created by jatin foujdar on 27/10/24.
//

import SwiftUI

struct ListRow: View {
    var body: some View {
        VStack {
            HStack {
                Text("San Francisco")
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
    ListRow()
}
