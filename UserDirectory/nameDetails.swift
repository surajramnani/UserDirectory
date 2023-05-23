//
//  nameDetails.swift
//  test
//
//  Created by Suraj Ramnani on 22/05/23.
//

import SwiftUI

struct nameDetails: View {
    @EnvironmentObject var dataModel: modelData
    let name: name
    let add: address
    
    
    var body: some View {
        VStack{
            var nameindex: Int {
                (modelData().namez.firstIndex(where: {$0.name == name.name}))!
            }
            FavoriteButton(isSet: $dataModel.namez[nameindex].favorite)
            Text("Information:")
                .font(.title)
            Text("Name: \(name.name)")
                .font(.body)
            Text("Age: \(name.age)")
                .font(.body)
            Text("Email: \(name.email)")
                .font(.body)
            Text("Email: \(name.genre)")
                .font(.body)
            Divider()
            Text("Interests:")
                .font(.title)
            ForEach(name.interests, id:\.self) {
                interest in
                Text(interest)
                
            }
            VStack{
                Divider()
                Text("Address:")
                    .font(.title)
            
                Text("Street: \(add.street)")
                    .font(.body)
                Text("State: \(add.state)")
                    .font(.body)
                Text("City: \(add.city)")
                    .font(.body)
                Text("Zipcode: \(add.zipcode)")
                    .font(.body)
                Divider()
                ForEach(name.education, id:\.self) {
                    edu in
                    Text(edu.degree)
                    Text(edu.major)
                    Text("University:\(edu.university)")
                   
                    Text(String(edu.year))
                }
                
                
            }
            
        }
    }
}
struct nameDetails_Previews: PreviewProvider {
    static var previews: some View {
        nameDetails(name: modelData().namez[2], add: modelData().namez[1].address)
            .environmentObject(modelData())
    }
}
