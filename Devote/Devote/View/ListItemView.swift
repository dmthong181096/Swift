//
//  ListItemView.swift
//  Devote
//
//  Created by Thong Doan on 07/01/2023.
//


import SwiftUI

struct ListItemView: View {
    @Environment(\.managedObjectContext) var viewContext
    @ObservedObject var item: Item
    var body: some View {
        Toggle(isOn: $item.completed) {
            Text(item.task ?? "").font(.system(.title2, design: .rounded))

                        .fontWeight(.heavy)
                        .foregroundColor(item.completed ? Color.pink : Color.primary)
                        .animation(.easeOut(duration: 0.25))
        }.onReceive(item.objectWillChange) { _ in

            if self.viewContext.hasChanges {
                try? self.viewContext.save()
            }
        }.toggleStyle(CheckBoxStyle())
            .padding(.vertical,10)
    }
}

//struct ListItemView_Previews: PreviewProvider {
//    @FetchRequest(
//        sortDescriptors: [NSSortDescriptor(keyPath: \Item.timestamp, ascending: true)],
//        animation: .default)
//    static var items: FetchedResults<Item>
//    static var previews: some View {
//        ListItemView().previewLayout(.sizeThatFits)
//    }
//}
