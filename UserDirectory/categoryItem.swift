//
//  categoryItem.swift
//  test
//
//  Created by Suraj Ramnani on 23/05/23.
//

import SwiftUI

struct categoryItem: View {
    var name: name
    var body: some View {
       Rectangle()
            .fill(Color.black)
            .frame(width: 200, height: 150)
            .cornerRadius(24)
            .overlay{
               VStack{
                    Text(name.name)
                    Text("\(name.age)")
                   Text(name.email)
                }
               .foregroundStyle(LinearGradient(colors: [.pink,.blue], startPoint: .topLeading, endPoint: .bottomTrailing))
            }
    }
}

struct categoryItem_Previews: PreviewProvider {
    static var previews: some View {
        categoryItem(name: modelData().namez[0])
    }
}
