//
//  MapAnnotationView.swift
//  Africa
//
//  Created by FE-Minh Thong on 31/12/2022.
//

import SwiftUI

struct MapAnnotationView: View {
    let location: NationalParkLocation
    @State private var animation: Double = 0
    var body: some View {
        ZStack {

            Circle().fill(Color.accentColor)
                .frame(width: 54 ,height: 54,alignment: .center)
            Circle()
                .stroke(Color.accentColor.opacity(0.5), lineWidth: 2)
            
                .frame(width: 52,height: 52,alignment: .center)
                .scaleEffect(1 + CGFloat(animation))
                .opacity(1 - animation)

            Image(location.image)
                .resizable()
                .scaledToFit()
                .frame(width: 48,height: 48,alignment: .center)
                .clipShape(Circle())
                
        }.onAppear {
            withAnimation(.easeOut(duration: 1.5).repeatForever(autoreverses: false)){
                animation = 1
            }

        }
    }
}

struct MapAnnotationView_Previews: PreviewProvider {
    static var loacations : [NationalParkLocation] = Bundle.main.decode("locations.json")
    static var previews: some View {
        MapAnnotationView(location: loacations[1]).previewLayout(.sizeThatFits)
    }
}
