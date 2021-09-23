//
//  ListEventView.swift
//  U&I
//
//  Created by Daniel BEDIAKO on 21/09/2021.
//

import SwiftUI

struct ListEventView: View {
    
    var title : String
    var image : String
    var firstName : String
    var lastName : String
    var avatar : String
    var date : String
    var hour : String
    var adress : String
    var city : String
    
    var body: some View {
        NavigationLink(destination: DetaileView()){
            
            VStack{
                ZStack{
                    Image("\(image)")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 355, height: 210, alignment: .center)
                        .cornerRadius(12)
                        .padding()
                    VStack {
                        Text("\(title)")
                            .multilineTextAlignment(.leading)
                            .padding(6)
                            .background(Color.white)
                            .cornerRadius(4)
                            .overlay(
                                RoundedRectangle(cornerRadius: 4)
                                    .stroke(Color(red: 0.95, green: 0.97, blue: 0.97))
                            )
                            .offset(x: -130, y: -80)
                    }
                }
                HStack (spacing: 7.0){
                    Image("\(avatar)")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 60, height: 70, alignment: .center)
                        .clipShape(Circle())
                    Text("\(firstName)")
                        .bold()
                    Spacer()
                    VStack(alignment: .trailing){
                        Text("\(date)")
                        Text("\(city)")
                            .foregroundColor(.gray)
                    }
                
                }
                .offset(y: -10)
                .frame(width: 350, height: 60, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            }
            .background(Color(red: 0.94, green: 0.95, blue: 0.96))
            .frame(width: 370, height: 300, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            .cornerRadius(10)
        } .buttonStyle(PlainButtonStyle())
    }
}


struct ListEventView_Previews: PreviewProvider {
    static var previews: some View {
        ListEventView(title: "", image: "", firstName: "", lastName: "", avatar: "", date: "", hour: "", adress: "", city: "")
    }
}
