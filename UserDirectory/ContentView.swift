//
//  ContentView.swift
//  test
//
//  Created by Suraj Ramnani on 22/05/23.
//

import SwiftUI

struct ContentView: View {
    @State var selection: tab = .featured
    enum tab: String {
        case featured = "featured"
        case list = "list"
    }
    var body: some View {
        TabView(selection: $selection){
            CategoryHome()
                .tabItem {
                    Label("Home", systemImage: "star.fill")
                }
                .tag(tab.featured)
            nameslist()
                .tabItem {
                    
                    Label("List", systemImage: "list.bullet")
                }
                .tag(tab.list)
        }}
}
        

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(modelData())
    }
}
