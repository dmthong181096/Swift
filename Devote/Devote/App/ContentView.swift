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
    @State private var showNewTaskItem: Bool    = false

    @AppStorage("isDarkMode") var isDarkMode: Bool = false
    @FetchRequest(
        sortDescriptors: [NSSortDescriptor(keyPath: \Item.timestamp, ascending: true)],
        animation: .default)
    private var items: FetchedResults<Item>

    var body: some View {
        NavigationView {
           
            
            ZStack {
                Color.clear
                VStack(alignment: .center, spacing: 10) {
                    
                    //MARK: HEADER
                    HStack {
                        //TITLE
                        Text("Devote")
                            .fontWeight(.heavy)
                            .font(.system(size: 50, design: .rounded))
                        Spacer()
                        //EDIT BUTTON
                        EditButton()
                            .padding(.horizontal,20)
                            .background(
                                Capsule().stroke(Color.white, lineWidth: 2)
                            )
                        

                        // APPEARCE BUTTON
                        Button {
                            withAnimation(.easeOut(duration: 0.5)){
                                isDarkMode.toggle()
                            }
                        } label: {
                            Image(systemName: isDarkMode ? "moon.circle.fill" : "moon.circle")
                        }

                    }.padding()
                        .foregroundColor(.white)
                        .font(.title)
                    
                    //NEW ITEM BUTTON
                    Button {
                        showNewTaskItem.toggle()
                    } label: {
                        HStack {
                            Image(systemName: "plus.circle")
                            Text("New Item")
                        }
                            .font(.system(size: 24, weight: .bold, design: .rounded))
                            .foregroundColor(.white)
                            .padding()
                            .background(
                                LinearGradient(gradient: Gradient(colors: [Color.pink, Color.blue]), startPoint: .leading, endPoint: .trailing).clipShape(Capsule())
                            )
                            .shadow(radius: 24)
                        
                    }
                    
                    






//                    Spacer(minLength: 100)
                    if (items.isEmpty == false){
                        List {
                            
                                ForEach(items) { item in
                                    NavigationLink {
                                        Text("Item at \(item.timestamp!, formatter: itemFormatter)")
                                    } label: {
                                        VStack(alignment: .leading, spacing: 10) {
                                            Text(item.task ?? "")
                                                .font(.headline)
                                                .fontWeight(.heavy)
                                            Text(item.timestamp!, formatter: itemFormatter)
                                                .font(.footnote)
                                        }
                                    }
                                } .onDelete(perform: deleteItems)
                                .shadow(radius: 12)
                            } .scrollContentBackground(.hidden)
                    }
                   
              
                   
                  
                }
                if showNewTaskItem {
                    
                    BlankView().onTapGesture {
                        withAnimation(.easeIn(duration: 0.25)){
                            showNewTaskItem = false
                        }
                    }
                    NewTaskItemView(isShowing: $showNewTaskItem)
                    
                   
                }
            }
          
            .navigationBarTitle(
                Text("Devote").font(.largeTitle)
                ,displayMode: .large)
            .navigationBarHidden(true)
           
           .background(
                BackgroundImageView()
            )
            .background(
                backgroundGradient.ignoresSafeArea(.all)
            )
        }.navigationViewStyle(StackNavigationViewStyle())
            
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
