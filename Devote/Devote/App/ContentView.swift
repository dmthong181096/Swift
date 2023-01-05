//
//  ContentView.swift
//  Devote
//
//  Created by FE-Minh Thong on 04/01/2023.
//

import SwiftUI
import CoreData

struct ContentView: View {
    @Environment(\.managedObjectContext) private var viewContext
    @State var task:String = ""
    private var isDisableButtonSave : Bool  {
        task.isEmpty
    }

    @FetchRequest(
        sortDescriptors: [NSSortDescriptor(keyPath: \Item.timestamp, ascending: true)],
        animation: .default)
    private var items: FetchedResults<Item>

    var body: some View {
        NavigationView {
            VStack {
                VStack(alignment: .center, spacing: 10) {
                    TextField("New Item", text: $task)
                        .padding()
                        .background(
                            Color(UIColor.systemGray6)
                        )
                        .cornerRadius(10)
                    Button {
                        addItem()
                        hideKeyboard()
                    } label: {
                        Spacer()
                        Text("Save")
                            .font(.title3)
                            .foregroundColor(.white)
                            .fontWeight(.heavy)
                        Spacer()
                    }.padding()
                    .background(
//                        task != "" ? Color(UIColor.systemPink) : Color.gray
                        isDisableButtonSave  ? Color.gray :  Color(UIColor.systemPink) 
                    )
                    .cornerRadius(10)
                    .disabled(isDisableButtonSave)

                }.padding(.horizontal)
                
                
                
                List {
                    ForEach(items) { item in
                        NavigationLink {
                            Text("Item at \(item.timestamp!, formatter: itemFormatter)")
                        } label: {
                            VStack(alignment: .leading, spacing: 10) {
                                Text(item.task ?? "")
                                Text(item.timestamp!, formatter: itemFormatter)
                            }
                        }
                    }
                    .onDelete(perform: deleteItems)
                }
                .toolbar {
                    ToolbarItem(placement: .navigationBarTrailing) {
                        EditButton()
                    }
                    ToolbarItem {
                        Button(action: addItem) {
                            Label("Add Item", systemImage: "plus")
                        }
                    }
            }
                .navigationBarTitle("New Item")
            }
            Text("Select an item")
        }
    }

    private func addItem() {
        withAnimation {
            let newItem = Item(context: viewContext)
            newItem.timestamp = Date()
            newItem.task = task
            newItem.completed = false
            newItem.id = UUID()

            do {
                try viewContext.save()
                task = ""
            } catch {
                // Replace this implementation with code to handle the error appropriately.
                // fatalError() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
                let nsError = error as NSError
                fatalError("Unresolved error \(nsError), \(nsError.userInfo)")
            }
        }
    }

    private func deleteItems(offsets: IndexSet) {
        withAnimation {
            offsets.map { items[$0] }.forEach(viewContext.delete)

            do {
                try viewContext.save()
            } catch {
                // Replace this implementation with code to handle the error appropriately.
                // fatalError() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
                let nsError = error as NSError
                fatalError("Unresolved error \(nsError), \(nsError.userInfo)")
            }
        }
    }
}

private let itemFormatter: DateFormatter = {
    let formatter = DateFormatter()
    formatter.dateStyle = .short
    formatter.timeStyle = .medium
    return formatter
}()

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}
