//
//  NavigationBarView.swift
//  TouchDown
//
//  Created by FE-Minh Thong on 01/01/2023.
//

import SwiftUI

struct NavigationBarView: View {
    @State private var isAnimated: Bool = false
    var body: some View {
        HStack(alignment: .top, spacing: 10) {

            Button(action: {
                
            }, label: {
                Image(systemName: "magnifyingglass")
                    .foregroundColor(.black)
                    .font(.title)
            })
            Spacer()
            LogoView()
                .offset(y: isAnimated ? 0 : -25)
                .opacity(isAnimated ? 1  : 0)
            Spacer()
            Button(action: {
                
            }, label: {
                Image(systemName: "cart.badge.plus")
                    .renderingMode(.original)
                    .foregroundColor(.black)
                    .font(.title)
//                    .background(
//                        Circle()
//                            .fill(Color.red)
//                            .frame(width: 15,height: 15)
//                            .offset(x:10, y:-10)
//                    )
            })


        }.padding(.horizontal)
//            .ignoresSafeArea()
            .padding(.top,10)
            .padding(.top,UIApplication.shared.windows.first?.safeAreaInsets.top)
           
            .padding(.bottom)
            .background(
                Color.white
            )
            .onAppear {
                withAnimation(.easeOut(duration: 0.5)){
                    isAnimated = true
                }
            }
    }
}

struct NavigationBarView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBarView().previewLayout(.sizeThatFits)
    }
}
