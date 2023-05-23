//
//  FavoriteButton.swift
//  test
//
//  Created by Suraj Ramnani on 23/05/23.
//

import SwiftUI

struct FavoriteButton: View {
    @Binding var isSet: Bool
    var body: some View {
        Button {
            isSet.toggle()
        } label: {
            Label("Show favorites Only", systemImage: isSet ? "star.fill" : "star")
                .foregroundColor(isSet ? .yellow : .gray)
                .labelStyle(.iconOnly)
        }

    }
}

struct FavoriteButton_Previews: PreviewProvider {
    static var previews: some View {
        FavoriteButton(isSet: .constant(true))
    }
}
