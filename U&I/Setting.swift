//
//  Setting.swift
//  U&I
//
//  Created by Daniel BEDIAKO on 21/09/2021.
//

import SwiftUI

struct SettingView: View {
    
    @State private var showingAlert = false
    
    var body: some View {
        NavigationView{
            VStack{
                Text("Paramètres ⚙️")
                    .font(.title2)
                    .padding(.bottom, 20)
                
                ItemView(itemName: "Apparence", itemLogo: "paintbrush")
                ItemView(itemName: "Aide", itemLogo: "questionmark.circle")
                ItemView(itemName: "Contact", itemLogo: "envelope.open")
                ItemView(itemName: "Evaluez-nous", itemLogo: "flag")
                ItemView(itemName: "Envoyez des commentaires", itemLogo: "text.bubble")
                ItemView(itemName: "Signalez un problème", itemLogo: "exclamationmark.triangle.fill")
                ItemView(itemName: "Conditions générales d'utilisation", itemLogo: "note.text")
               // ItemView(itemName: "Recommander à un amis", itemLogo: "hand.thumbsup")
                
                HStack(spacing: -5){
                    Image(systemName: "power")
                        .padding()
                        .offset(x: 5)
                Button("Deconnexion") {
                        showingAlert = true
                    }
                .foregroundColor(.black)
                    .alert(isPresented: $showingAlert) {
                        Alert(
                            title: Text("Confirmation"),
                            message: Text("Etes-vous sur de vouloir vous deconnecter"),
                            primaryButton: .destructive(Text("Annuler"), action: {
                                
                            }),
                            secondaryButton: .default(Text("OK"), action: {
                                
                            })
                        )
                    }
                
                } .offset(y: 10)
                
                
            }//.navigationTitle("Paramètres ⚙️")
            //Spacer()
            .navigationBarHidden(true)
        }
        Spacer()
    }
}

struct SettingView_Previews: PreviewProvider {
    static var previews: some View {
        SettingView()
    }
}

struct ItemView: View {
    var itemName = ""
    var itemLogo = ""
    
    var body: some View {
        HStack (spacing:-20){
            Image(systemName: "\(itemLogo)")
                .padding()
                .offset(x: 3)
            Text("\(itemName)")
                .padding()
                .offset(x: 5)
            Spacer()
            Image(systemName: "chevron.right")
                .padding()
                .offset(x: -10)
        }
        Rectangle()
            .frame(width: 350, height: 2)
            .foregroundColor(Color(red: 0.02, green: 0.16, blue: 0.51))
    }
}
