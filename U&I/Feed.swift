//
//  Feed.swift
//  U&I
//
//  Created by Daniel BEDIAKO on 21/09/2021.
//

import SwiftUI

struct Feed: View {
    
    @State var search: String = ""
    
    var body: some View {
        NavigationView {
            VStack(alignment: .leading){
                HStack(spacing: 35.0){
                    Text("Bonjour, Abdellah")
                        .font(.title)
                        .bold()
                        .padding()

                    VStack (alignment: .trailing, spacing: -10.0){
                        Text("Sept 20")
                            .bold()
                        Text("_____")
                            .bold()
                    }
                }
                TextField("Recherche  🔍", text: $search)
                    .frame(width: 355, height: 25)
                    .padding(8)
                    .background(Color(.systemGray6))
                    .cornerRadius(8)
                
                ScrollView {
                    ForEach(events, id: \.id) { event in
                        ListEventView(title: event.title, image: event.image, firstName: event.firstName, lastName: event.lastName, avatar: event.avatar, date: event.date, hour: event.hour, adress: event.adress, city: event.city)
                    }
                }
            }.navigationBarHidden(true)
        }
    }
}


struct Feed_Previews: PreviewProvider {
    static var previews: some View {
        Feed(search: "")
    }
}
