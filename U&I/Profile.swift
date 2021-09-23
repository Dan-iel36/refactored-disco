//
//  Profile.swift
//  U&I
//
//  Created by Daniel BEDIAKO on 21/09/2021.
//

import SwiftUI



struct Profile: View {
    
    @State private var firstname = ""
    @State private var lastname = ""
    @State private var email = ""
    @State private var telephone = ""
    @State private var termsAccepted = false
    @State private var age = ""
    private let oldPasswordToConfirmAgainst = "12345"
    @State private var oldPassword = ""
    @State private var newPassword = ""
    @State private var confirmedPassword = ""
    
    var body: some View {
        
        NavigationView{
            VStack {
                Text("Profil")
                    .font(.title2)
                HStack{
                    //Spacer()
                    NavigationLink(destination: SettingView()){
                Image(systemName: "gearshape")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 25, height: 25)
                    .cornerRadius(150)
                    
                    //.padding(.trailing, 40)
                    .padding(.leading, 300)
                //.offset(x: 100, y: -50)
                    }
            }
                ZStack {
                    HStack{
                        Image("vdame")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 100, height: 100)
                            .cornerRadius(150)
                           // .overlay(Image(systemName: "pencil.circle"), alignment: .bottomTrailing)
                            
                            //.frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 150)
                    }
                    //Spacer()
                    HStack{
                        //Spacer()
                        Image(systemName: "pencil.circle.fill")
                            .resizable()
                            .frame(width: 30, height: 30, alignment: .bottomTrailing)
                            .padding(.init(top: 80, leading: 70, bottom: 0, trailing: 0) )
                            .foregroundColor(.orange)
                        
                    }
                }
                
              // Spacer()
                
                
                
                Form {
                    Section(header: Text("Profil utilisateur"))
                    {
                        
                        TextField("Prénom",
                                  text: $firstname)
                        TextField("Nom",
                                  text: $lastname)
                        TextField("Email",
                                  text: $email)
                        TextField("Téléphone",
                                  text: $telephone)
                        TextField("Age",
                                  text: $age)
                    }
                    
                    Toggle(isOn: $termsAccepted,
                           label: {
                            Text("Accepter les conditions générales")
                           })
                    
                    
                    
                    
                    Section(header: Text("Mot de passe")) {
                        
                        SecureField("Entrer votre mot de passe ", text: $newPassword)
                        
                    }
                    Button(action:
                            {
                                print(" valider")
                                
                                
                                
                            }, label: {
                                HStack {
                                    Spacer()
                                    Text("Valider")
                                    Spacer()
                                }
                                
                            })
                }.navigationBarTitle("Profile")
                .navigationTitle("g;,,bvjv")
                .navigationBarHidden(true)
                
                
                // Form
            }//NavigationView
        }
        
        
        
        if self.isUserInformationValid() {
            
            if self.isPasswordValid() {
                Button(action: {
                    print("Valider")
                    
                }, label: {
                    Text("Valider")
                    
                }).frame(width: UIScreen.main.bounds.width - 30, height: 50)
                .background(Color.red)
            }
            
            
        }//if self.isUserInformationValid()
        
    }//var body: some View
    
    private func isUserInformationValid() -> Bool
    {
        if firstname.isEmpty {
            return false
        }
        
        if lastname.isEmpty {
            return false
        }
        if email.isEmpty {
            return false
        }
        
        if telephone.isEmpty {
            return false
        }
        
        if !termsAccepted {
            return false
        }
        
        return true
    }
    private func isPasswordValid() -> Bool {
        if oldPassword != oldPasswordToConfirmAgainst {
            return false
        }
        
        if !newPassword.isEmpty && newPassword == confirmedPassword {
            return true
        }
        
        return false
        
    }
    
}//struct Profile: View


struct Profile_Previews: PreviewProvider {
    static var previews: some View {
        Profile()
        
        
    }//static var previews: some View
}//struct Profile_Previews: PreviewProvider


