//
//  ListRowView.swift
//  TodoList_Basic
//
//  Created by Titus Coleman on 7/19/23.
//

import SwiftUI

struct ListRowView: View {
    
    let item: ItemModel
    
    var body: some View {
        HStack {
            Image(systemName: item.isComplete ? "checkmark.circle" : "circle")
                .foregroundColor(item.isComplete ? .green : .red)
            Text(item.title)
            Spacer()
        }
        .font(.title2)
        .padding(.vertical, 2)
    }
}

struct ListRowView_Previews: PreviewProvider {
    
    static var item1 = ItemModel(title: "Test", isComplete: false)
    static var item2 = ItemModel(title: "Test 2", isComplete: true)
    
    static var previews: some View {
       
        List {
            ListRowView(item: item1)
            ListRowView(item: item2)
        }
        .previewLayout(.sizeThatFits)
        
    }
}
