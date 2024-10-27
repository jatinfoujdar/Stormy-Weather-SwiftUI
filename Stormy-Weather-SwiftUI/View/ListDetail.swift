//
//  ListDetail.swift
//  Stormy-Weather-SwiftUI
//
//  Created by jatin foujdar on 27/10/24.
//

import SwiftUI

struct ListDetail: View {
  
    var body: some View {
        VStack {
                List{
                    ForEach(0..<10, id: \.self){ number in
                        ListRow()
                    }
                }
            }
    }
}

#Preview {
    ListDetail()
}
