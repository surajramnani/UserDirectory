//
//  nameslist.swift
//  test
//
//  Created by Suraj Ramnani on 22/05/23.
//

import SwiftUI

struct nameslist: View {
    @State var showFavorites = false
    @EnvironmentObject var dataModel: modelData
    var body: some View {
        NavigationStack{
            var filteredFavorites:[name] {
                dataModel.namez.filter { name in
                    (!showFavorites || name.favorite )
                }
            }
            Toggle(isOn: $showFavorites) {
                Text("Show Favorites Only")
            }
            List{
                ForEach(filteredFavorites, id: \.self) {
                    name in
                    NavigationLink{
                        nameDetails(name: name, add: name.address)
                    }
                label:{
                    namesrow(name: name)
                }
                }
            }
        }
    }
}
struct nameslist_Previews: PreviewProvider {
    static var previews: some View {
        nameslist()
            .environmentObject(modelData())
    }
}
