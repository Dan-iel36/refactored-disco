//
//  ButtonAjouter.swift
//  U&I
//
//  Created by Daniel BEDIAKO on 21/09/2021.
//

import SwiftUI

struct ButtonAjouterView: View {
    
    @State var showingAlert = false
        
    var body: some View {
        VStack {
            Button("Créer un évenement"){
                showingAlert = true
            }
            .padding(.top, 20.0)
            .alert(isPresented: $showingAlert){
                Alert(title: Text("Création d'un évenement"),
                      message: Text("Vous venez de creér un evenement pour le 24 Septembre à 18h "))
            }
            //.frame(width: 100, height: 200, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            //Spacer()
            .padding(.bottom, 20)

        }
        
    }
}

struct ButtonAjouterView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonAjouterView()
    }
}



//ZStack{
//    Rectangle()
//        .frame(width: 270, height: 80)
//        .foregroundColor(.green)
//        .cornerRadius(40)

//label: {
//   Spacer()
//   Image(systemName: "checkmark.rectangle.fill")
//       .resizable()
//   .frame(width: 30, height: 30)
//       .foregroundColor(.white)
//       .padding()
//   Text("Ajouter un evenement")
//       .foregroundColor(.white)
//       Spacer()
