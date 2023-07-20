//
//  AddView.swift
//  TodoList_Basic
//
//  Created by Titus Coleman on 7/19/23.
//

import SwiftUI

struct AddView: View {
    
    @Environment(\.presentationMode) var presentationMode

    @EnvironmentObject var listViewModel: ListViewModel
    
    @State var textFieldText: String = ""
    
    var body: some View {
        ScrollView{
            VStack {
                TextField("Type here...(3 character minimum)", text: $textFieldText)
                    .padding(.horizontal)
                    .frame(height: 55)
                    .background(.gray)
                    .cornerRadius(10)
                Button(action: saveButtonPressed, label: {
                    Text("Save".uppercased())
                        .foregroundColor(.white)
                        .font(.headline)
                        .frame(height: 55)
                        .frame(maxWidth: .infinity)
                        .background(Color.accentColor)
                        .cornerRadius(10)
                })
                .disabled(textFieldText.count < 3)
            }
            .padding()
        }
        
        .navigationTitle("Add an Item 🖋️")
    }
        
    func saveButtonPressed() {
        listViewModel.addItem(title: textFieldText)
        presentationMode.wrappedValue.dismiss()
    }
}

struct AddView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack{
            AddView()
        }
        .environmentObject(ListViewModel())
    }
}
