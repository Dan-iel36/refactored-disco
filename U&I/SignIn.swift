//
//  SignIn.swift
//  U&I
//
//  Created by Daniel BEDIAKO on 21/09/2021.
//

import SwiftUI

struct SignIn: View {
    
    var lightgray = Color(red: 0.95, green: 0.97, blue: 0.97)
    var middlegray = Color(red: 0.80, green: 0.80, blue: 0.80)
    
    @State var email: String = ""
    @State var password: String = ""
    @State var confirmPass: String = ""
    
    var body: some View {
        VStack{
            VStack{
                Spacer()
                VStack(spacing: -20){
                    Image("logo-1")
                        .resizable()
                        .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                        .frame(width: 100, height: 100)
                        .padding()
                    Text("Connexion")
                        .font(.largeTitle)
                        .bold()
                }
                //.position(x: 120, y: 130)
                HStack(spacing: UIScreen.main.bounds.width / 20){
                    SocialButton(socialLogo: "apple", sizeLogo: 30)
                    SocialButton(socialLogo: "google", sizeLogo: 30)
                    SocialButton(socialLogo: "facebook", sizeLogo: 30)
                } .padding()
                VStack (spacing: 16){
                    TextField("Email", text: $email)
                        .padding(.bottom)
                        .frame(width: 320.0)
                    //.overlay(VStack{Divider().offset(x: 0, y: 5)})
                    //.position(x: 200, y: 130)
                    SecureField("Mot de passe", text: $password)
                        .padding(.bottom)
                        .frame(width: 320.0)
                    //.overlay(VStack{Divider().offset(x: 0, y: 15)})
                    //.position(x: 200, y: 90)
                    /* SecureField("Confirmer le mot de passe", text: $confirmPass)
                     .padding(.bottom)
                     .frame(width: 320.0)*/
                    //.overlay(VStack{Divider().offset(x: 0, y: 15)})
                    //.position(x: 200, y: 63)
                }
                
            }
            VStack{
                (Text("Mot de passe oublié?").underline())
                    .font(.system(size: 13))
                    .foregroundColor(Color.gray)
                //.position(x: 200, y: 60)
                NavigationLink(destination:SignUp()){
                    Text("Vous n'avez pas de compte ? \(Text("Inscrivez-vous").underline())")
                        .font(.system(size: 13))
                        .foregroundColor(Color.gray)
                }
            }
            .padding()
            
            Button(action: {}) {
                Text("Se connecter")
                    .foregroundColor(.white)
                    .bold()
                    .frame(width: 320, height: 70)
                    .background(Color(red: 0.02, green: 0.16, blue: 0.51))
                    .cornerRadius(10)
            }
            Spacer()
            Image(systemName: "mic.circle.fill")
                .resizable()
                .frame(width: 100, height: 100)
                .foregroundColor(Color(red: 0.02, green: 0.16, blue: 0.51))
            Spacer()
            
        }
        
        
    }
}

struct SignIn_Previews: PreviewProvider {
    static var previews: some View {
        SignIn()
    }
}

/*struct SocialButton: View {
 var socialLogo : String
 var sizeLogo : CGFloat
 
 var body: some View {
 Button(action: {}){
 ZStack{
 RoundedRectangle(cornerRadius: 20)
 .stroke(Color(red: 0.80, green: 0.80, blue: 0.80), lineWidth: 1)
 .frame(width: 100, height: 60, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
 Image(socialLogo)
 .resizable()
 .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
 .frame(width: sizeLogo, height: sizeLogo)
 }
 
 }
 }
 }*/
