//
//  ItemModel.swift
//  TodoList_Basic
//
//  Created by Titus Coleman on 7/20/23.
//

import Foundation


struct ItemModel: Identifiable, Codable {
    let id: String
    let title: String
    let isComplete:  Bool
    
    init(id: String = UUID().uuidString, title: String, isComplete: Bool){
        self.id = id
        self.title = title
        self.isComplete = isComplete
    }
    
    func toggleIsComplete() -> ItemModel {
        return ItemModel(id: id, title: title, isComplete: !isComplete)
    }
}
