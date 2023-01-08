//
//  ButtonAddNewItemView.swift
//  DoIt
//
//  Created by Thong Doan on 08/01/2023.
//

import SwiftUI

struct ButtonAddNewItemView: View {
    @State private var isAnimating: Bool = false
    @Binding var isClicked: Bool
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Spacer()
            HStack {
                Spacer()
                ZStack {
                    
                        
                    Button {
                        isClicked.toggle()
                    } label: {
                        ZStack {
                            Capsule()
                                .stroke(LinearGradient(colors: [Color.blue,Color.pink], startPoint: .leading, endPoint: .trailing), lineWidth: 5)
                                .frame(width: 80,height: 80)
                                .opacity(isAnimating ? 0.1 : 1)
                                .scaleEffect(isAnimating ? 1 : 0.5)
                                .animation(.linear(duration: 1).repeatForever(autoreverses: false), value: isAnimating)
                            Image(systemName: "plus.circle.fill")
                                .foregroundColor(.blue)
//                                .font(.system(size: 50, design: .rounded))
//                                .background(
//                                    Color.blue.clipShape(Capsule())
//                                )
                                .scaleEffect(3)
                        }
                    }
                }
            }.padding(.bottom,30)
                .padding(.trailing,30)
        }
        .onAppear(){
            isAnimating = true
        }
        

    }
}

struct ButtonAddNewItemView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonAddNewItemView(isClicked: .constant(false)).previewLayout(.sizeThatFits)
    }
}
