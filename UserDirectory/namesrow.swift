//
//  namesrow.swift
//  test
//
//  Created by Suraj Ramnani on 22/05/23.
//

import SwiftUI

struct namesrow: View {
    var name: name
    var body: some View {
        HStack{
            Text(name.name)
            if name.favorite{
                Image(systemName: "star.fill")
                    .foregroundColor(.yellow)
            }
        }
    }
}

struct namesrow_Previews: PreviewProvider {
    static var previews: some View {
        namesrow(name: modelData().namez[0])
    }
}
