//
//  BoomView.swift
//  U&I
//
//  Created by Daniel BEDIAKO on 21/09/2021.
//

import SwiftUI

struct BoomView: View {
    var body: some View {
        
        ZStack {
           /* Color(UIColor(red: 0.95, green: 0.97, blue: 0.97, alpha: 1.00))
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)*/
            VStack{
                Text("U   &   I")
                    .font(.custom("Chewy-Regular", size: 50))
                    .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                    .padding()
                Image("logo-1")
                    .resizable()
                    .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                    .frame(width: 300, height: 150)
                    .padding()
                Image("access")
                    .resizable()
                    .frame(width: 300, height: 100)
                    .padding()
                Text("Bienvenue")
                    .font(.custom("Verdana", size: 30))
                    .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                    
            }
        }
        
        
    }
}

struct BoomView_Previews: PreviewProvider {
    static var previews: some View {
        BoomView()
    }
}
