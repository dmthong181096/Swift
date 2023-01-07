//
//  NewTaskItemView.swift
//  Devote
//
//  Created by Thong Doan on 07/01/2023.
//

import SwiftUI

struct NewTaskItemView: View {
    @Environment(\.managedObjectContext) private var viewContext
    @State var task:String = ""
    @State private var isAnimating: Bool = false
    @Binding var isShowing: Bool
    private var isDisableButtonSave : Bool  {
        task.isEmpty
    }
    var body: some View {
        VStack(alignment: .center, spacing: 10) {
          
            Spacer()
            VStack{
                
          

                
                TextField("New Item", text: $task)
                    .foregroundColor(.pink)
                    .font(.system(size: 24, weight: .bold, design: .rounded))
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

                        .font(.system(size: 24, weight: .bold, design: .rounded))

                        .foregroundColor(.white)
                        .fontWeight(.heavy)
                    
                    Spacer()
                }.padding()
                .background(
                    isDisableButtonSave  ? Color.blue :  Color(UIColor.systemPink)
                )
                .cornerRadius(10)
                .disabled(isDisableButtonSave)
                
            }
            .padding(30)
            .background(
                
            )
            .cornerRadius(24)
            .padding(.horizontal,15)
            .shadow(radius: 24)
            
         
        }.ignoresSafeArea()
            .offset( y: isAnimating ? 0 : 100)
            .onAppear {
                withAnimation(.easeOut(duration: 0.5)){
                    isAnimating = true
                }
            }.padding(.bottom,20)
            .offset(y: isShowing ? 0 : 100)
    }
    //MARK: FUNCTION
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
                let nsError = error as NSError
                fatalError("Unresolved error \(nsError), \(nsError.userInfo)")
            }
            hideKeyboard()
            isShowing  = false
        }
    }
}

struct NewTaskItemView_Previews: PreviewProvider {
    static var previews: some View {
        NewTaskItemView(isShowing: .constant(true)).background(Color.gray.opacity(0.5).ignoresSafeArea())
    }
}
