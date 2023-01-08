//
//  NewTaskItem.swift
//  DoIt
//
//  Created by Thong Doan on 08/01/2023.
//

import SwiftUI

struct NewTaskItem: View {
    @State var task: String = ""
    @State var time: String = ""
    
    @State var category: String = ""
    @State private var date = Date()
    var girdLayout: [GridItem] = [
        GridItem(),
        GridItem(),
        GridItem()
    ]
    @State private var pressed:Bool = false
    var body: some View {
        NavigationView{
            
        
            VStack( alignment: .center,spacing: 0) {
                
                Form {
                    Text("What are you planning?")
                        .font(.system(.callout))
                        .foregroundColor(.secondary)
                    TextEditor(text: $task)
                        .font(.title3)
                        .frame(height: 100)
                        .cornerRadius(12)
                    HStack(alignment: .center, spacing: 20) {
                        
                        Image(systemName: "bell.badge")
                        DatePicker( "", selection: $date)
                            .frame(width: 200)
                        
                        Spacer()
                        Spacer()
                        
                    }
                    HStack(alignment: .center, spacing: 20) {
                        Image(systemName: "square.and.pencil")
                        TextField(text: $time, prompt: Text("Add note")) {
                           
                        }
                    }
                    HStack(alignment: .center, spacing: 20) {
                        Image(systemName: "tag")
                        TextField(text: $category, prompt: Text("Select Category")) {
                           
                        }.disabled(true)
                        
                    }
                    
  
                }.padding(.top,-10)
                        Form {
                            LazyVGrid(columns: girdLayout, spacing: 20, content: {
                                ForEach(categories) { category in
                                    CategoryItemGirdView(category: category)
                                        .onTapGesture {
                                        self.category = category.name
                                        withAnimation(.easeOut(duration: 1)){
                                            pressed = true
                                        }

                                        }
                                    
                                }
                            })
                        }
                        
                    
                Button {
                    print("Time \(date.formatted(date: .omitted, time: .omitted))")
                } label: {
                    
                    HStack {
                        Spacer()
                        Text("SAVE".uppercased())
                            .font(.title2)
                            .foregroundColor(.white)
                            .fontWeight(.heavy)
                        Spacer()
                    }.padding()
                        .background(
                            
//                            Color.blue.cornerRadius(12)
                            
                            LinearGradient(colors: [Color.blue,Color.pink], startPoint: .leading, endPoint: .trailing)
                                .cornerRadius(12)
                        ).padding()
                   
                }
//                        .padding()
//                .background(
//                    Color.blue.cornerRadius(12)
//                ).padding()
                    

                
                Spacer()
               
                
         
                
            }.scrollDisabled(true)
                .navigationBarTitle(Text("New task"))
                
                .navigationBarTitleDisplayMode(.inline)
        }
       
    }
}

struct NewTaskItem_Previews: PreviewProvider {
    static var previews: some View {
        NewTaskItem()
            .preferredColorScheme(.dark)
    }
}
