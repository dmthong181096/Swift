//
//  InsetMapView.swift
//  Africa
//
//  Created by FE-Minh Thong on 30/12/2022.
//

import SwiftUI
import MapKit

struct InsetMapView: View {
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 6.600286, longitude: 16.4377599), span: MKCoordinateSpan(latitudeDelta: 60.0, longitudeDelta: 60.0))
    var body: some View {
        Map(coordinateRegion: $region)
            .overlay(alignment: .topTrailing, content: {
                NavigationLink(destination: MapView()) {
                    HStack {
                        Image(systemName: "mappin.circle")
                            .foregroundColor(.white)
                        Text("Locations")
                            .foregroundColor(.accentColor)
                    }.padding(12)
                    .background (
                        Color.black.opacity(0.5).cornerRadius(5)
                    )
                }.padding(.top,20)
                    .padding(.trailing,20)
                
            })
            .frame(height: 250)
            .cornerRadius(12)
    }
}

struct InsetMapView_Previews: PreviewProvider {
    static var previews: some View {
        InsetMapView().previewLayout(.sizeThatFits)
            .preferredColorScheme(.dark)
    }
}
