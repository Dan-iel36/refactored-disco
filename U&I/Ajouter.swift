//
//  Ajouter.swift
//  U&I
//
//  Created by Daniel BEDIAKO on 21/09/2021.
//

import SwiftUI

struct Ajouter: View {
    
    @State  var title = ""
    @State  var duration = ""
    @State  var text: String = ""
    @State var adresse: String = ""
    @State var selectedDate = Date()
    @State var cp: String = ""
    

    
    
    
    var body: some View {
        
        
        NavigationView{
            
            VStack{
        
                VStack{
                    ScrollView(.horizontal) {
                        CardView()
                    }
                }
    

                Form{
                    Section{
                        
                        TextField("Nom Activité", text :$title)
                            .font(.custom("Verdana", size: 18))
                            .foregroundColor(.gray)
                        
                        TextField("Duration", text : $duration)
                            .font(.custom("Verdana", size: 18))
                            .foregroundColor(.gray)
                        
                        TextField("Description general", text: $text)
                            .foregroundColor(.gray)
                            .font(.custom("Verdana", size: 18))
                        
                        HStack {
                            TextField("Adresse",text: $adresse)
                                .foregroundColor(.gray)
                                .font(.custom("Verdana", size: 18))
                            
                            TextField("Code Postal",text: $cp)
                                .foregroundColor(.gray)
                                .font(.custom("Verdana", size: 18))
                            
                        }
                            DatePicker(
                                   "Date",
                                   selection: $selectedDate, displayedComponents: [.date, .hourAndMinute])
                        
                           /* ButtonAjouterView()
                                .padding()*/
                           
                    }
                   // ButtonAjouterView()
                }
                ButtonAjouterView()
                    
//                Text("Vous venez de creér un evenement dans ce date ... \(selectedDate)")
//                 .foregroundColor(.red)//form fiels go here
//                 .padding()
                
            }
            .navigationBarTitle("Description")
            .foregroundColor(.blue)
            
        }
//        TextField("Nom Activité", text :$title)
//            .font(.custom("Verdana", size: 18))
//            .foregroundColor(.gray)
    }
    
}


struct Ajouter_Previews: PreviewProvider {
    static var previews: some View {
        Ajouter()
    }
}

struct ImgScroll: Identifiable {
    var id = UUID()
    var img: String
}

var tableImgs = [
    ImgScroll(img: "img0"),
    ImgScroll(img: "img1"),
    ImgScroll(img: "img2"),
    ImgScroll(img: "img3"),
    ImgScroll(img: "img4"),
    ImgScroll(img: "img5")
]

struct CardView: View {
    var body: some View {
        HStack {
            ForEach(tableImgs) { index in
                Image(index.img)
                    .resizable()
                    .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                    .cornerRadius(10)
                    .padding(5)
            }
        }
    }
}
