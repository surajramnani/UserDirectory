//
//  CategoryRow.swift
//  test
//
//  Created by Suraj Ramnani on 23/05/23.
//

import SwiftUI

struct CategoryRow: View {
    var categoryItems: String
    var items: [name]
    var body: some View {
        
        NavigationStack{
            VStack(alignment: .leading){
                Text(categoryItems)
                ScrollView(.horizontal,showsIndicators: false)
                {
                    
                   
                    HStack{
                        ForEach(items, id: \.self) { item in
                            NavigationLink{
                                nameDetails(name: item, add: item.address)
                            }
                        label:{
                            categoryItem(name: item)
                        }
                        }
                    }
                }}
        }}
}
struct CategoryRow_Previews: PreviewProvider {
    static var previews: some View {
        CategoryRow(categoryItems: modelData().namez[0].genre, items: Array(modelData().namez.prefix(upTo: 4)))
            .environmentObject(modelData())
    }
}
