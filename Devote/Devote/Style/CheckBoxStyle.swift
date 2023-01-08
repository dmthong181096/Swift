//
//  CheckBoxStyle.swift
//  Devote
//
//  Created by Thong Doan on 07/01/2023.
//

import SwiftUI

struct CheckBoxStyle: ToggleStyle {
    func makeBody(configuration: Configuration) -> some View {
        return HStack {
            Image(systemName: configuration.isOn ? "checkmark.circle.fill" : "circle")
                .foregroundColor(configuration.isOn ? .pink : .primary)
                .font(.system(.title2, design: .rounded))
                .onTapGesture {
                    withAnimation(.easeOut(duration: 0.25)){
                        configuration.isOn.toggle()
                    }
                    
                }
            configuration.label
        }
    }
}

struct CheckBoxStyle_Previews: PreviewProvider {
    static var previews: some View {
        Toggle("Placeholder label: ", isOn: .constant(true))
            .toggleStyle(CheckBoxStyle())
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
