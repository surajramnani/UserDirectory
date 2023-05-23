//
//  CategoryHome.swift
//  test
//
//  Created by Suraj Ramnani on 23/05/23.
//

import SwiftUI

struct CategoryHome: View {
    var body: some View {
        NavigationStack{
            List{
                ForEach(modelData().category.keys.sorted(), id: \.self){
                    key in
                    CategoryRow(categoryItems: key, items: modelData().category[key]!)
                }
            }    }
        .navigationTitle("User Directory")
        .listStyle(.plain)
    }}

struct CategoryHome_Previews: PreviewProvider {
    static var previews: some View {
        CategoryHome()
    }
}
