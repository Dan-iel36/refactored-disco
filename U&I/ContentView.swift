//
//  ContentView.swift
//  U&I
//
//  Created by Daniel BEDIAKO on 21/09/2021.
//

import SwiftUI

struct ContentView: View {
    
    // 1.
    @State var isActive:Bool = false
    
    var body: some View {
        VStack {
            // 2.
            if self.isActive {
                // 3.
                MainView()
                    .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            } else {
                // 4.
               // MySwiftUIView()
                BoomView()
                    .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            }
        }
        // 5.
        .onAppear {
            // 6.
            DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
                // 7.
                withAnimation {
                    self.isActive = true
                }
            }
        }
    }
    
    
}

struct contentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
