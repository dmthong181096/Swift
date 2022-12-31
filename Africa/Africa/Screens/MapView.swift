//
//  MapView.swift
//  Africa
//
//  Created by FE-Minh Thong on 28/12/2022.
//

import SwiftUI

import MapKit
struct MapView: View {
    @State private var region: MKCoordinateRegion = {
        var mapCondinates = CLLocationCoordinate2D(latitude: 6.600286, longitude: 16.4377599)
        var mapZoomLevel = MKCoordinateSpan (latitudeDelta: 60.0, longitudeDelta: 60.0)
        var mapRegion = MKCoordinateRegion(center: mapCondinates, span: mapZoomLevel)
        return mapRegion
    }()
    var locations: [NationalParkLocation] = Bundle.main.decode("locations.json")
    var body: some View {
        Map(coordinateRegion: $region, annotationItems: locations) { item in
            
            MapAnnotation(coordinate: item.location) {
                MapAnnotationView(location: item)
                }

                 
            
        }.overlay(alignment: .top, content: {
            HStack(alignment: .top, spacing: 0, content: {
                Image("compass")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 48,height: 48,alignment: .center)
                    .padding()
                VStack(alignment: .center, spacing: 12) {
                    HStack{
                        Text("Latitude:")
                            .foregroundColor(.accentColor)
                            .font(.footnote)
                            .fontWeight(.bold)
                        Spacer()
                        Text("\(region.center.latitude)")
                            .font(.footnote)
                            .foregroundColor(.white)
                    }
                    HStack{
                        Text("Longitude:")
                            .foregroundColor(.accentColor)
                            .font(.footnote)
                            .fontWeight(.bold)
                        Spacer()
                        Text("\(region.center.longitude)")
                            .font(.footnote)
                            .foregroundColor(.white)
                    }
                }.padding()
                    .padding(.leading,-20)
            }).background(
                Color.black
                    .cornerRadius(12)
                    .opacity(0.6)
            ).padding(.vertical,12)
                .padding(.horizontal,20)
        })
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
