//
//  MainView.swift
//  U&I
//
//  Created by Daniel BEDIAKO on 21/09/2021.
//

import SwiftUI

struct MainView: View {
    
    @State var selection = 0
    
    var body: some View {
        TabView(selection: $selection,
                content:  {
                    Feed().tabItem {
                        Text("Feed")
                            Image(systemName: "newspaper.fill")
                    }.tag(0)
                    Ajouter().tabItem {
                            Text("Events")
                            Image(systemName: "plus.circle.fill")
                        
                        
                    }.tag(1)
                    Profile().tabItem { Text("Profile")
                        Image(systemName: "person.circle.fill")}.tag(2)
                })
        
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
