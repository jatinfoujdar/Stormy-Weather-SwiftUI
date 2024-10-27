//
//  ListRow.swift
//  Stormy-Weather-SwiftUI
//
//  Created by jatin foujdar on 27/10/24.
//

import SwiftUI

struct ListRow: View {
    var body: some View {
        Text("San Francisco")
            .font(.headline)
        Image(systemName: "cloud.sun.fill")
            .font(.title)

    }
}

#Preview {
    ListRow()
}
