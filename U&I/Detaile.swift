//
//  Detaile.swift
//  U&I
//
//  Created by Daniel BEDIAKO on 21/09/2021.
//

import SwiftUI
import MapKit
struct DetaileView: View {
    
    var body: some View {
        VStack(spacing:20){
                    MapView()
                    .ignoresSafeArea()
                    .frame(width: 400, height: 200)
                        .padding(.top, 50.0)
                    .offset(y: /*@START_MENU_TOKEN@*/10.0/*@END_MENU_TOKEN@*/)
                    
                    Text("Cité de l'Espace")
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .foregroundColor(Color.blue)
                    Text("Avenue Jean Gonord, 31500 Toulouse")
                    
                    HStack {
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                            Image("femme")
                                .resizable()
                                .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                                .frame(width: 80, height: 80)
                        })
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                            Image("calendar-2")
                                .resizable()
                                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                                .frame(width: 80, height: 80)
                        })
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                            Image("group")
                                .resizable()
                                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                                .frame(width: 80, height: 80)
                        })
                    }
                    Image("CitéLespace")
                        .resizable()
                        .ignoresSafeArea()
                        .frame(width: 400, height: 200)
                    
                    
                    NavigationLink(destination: SignIn()){
                            Text("Participer")
                                .font(.title)
                    }
                }
            
        .navigationBarTitleDisplayMode(.inline)
        .ignoresSafeArea()
    }
}

struct DetaileView_Previews: PreviewProvider {
    static var previews: some View {
        DetaileView()
    }
}

struct MapView: UIViewRepresentable {
    func makeUIView(context: Context) -> MKMapView {
        let mapView = MKMapView()
        let region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude:  43.5860447, longitude: 1.4927856),
                                        span: MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5))
        mapView.setRegion(region, animated: true)
        return mapView
    }
    func updateUIView(_ uiView: MKMapView, context: Context){
        
    }
}
