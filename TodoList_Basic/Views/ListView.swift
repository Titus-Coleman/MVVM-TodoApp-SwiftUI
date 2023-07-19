//
//  ListView.swift
//  TodoList_Basic
//
//  Created by Titus Coleman on 7/19/23.
//

import SwiftUI

struct ListView: View {
    
    @State var items: [String] = [
        "Example todo",
        "Take out trash",
        "Study Java"
    ]
    
    var body: some View {
        List {
            ForEach(items, id: \.self) {
                item in
                ListRowView(title: item)
            }
            
        }
        .listStyle(SidebarListStyle())
        .navigationTitle("Todo List 📝")
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                EditButton()
            }
            ToolbarItem(placement: .navigationBarTrailing) {
                NavigationLink("Add") {
                    AddView()
                }
            }
        }
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack{
            ListView()
        }
    }
}

