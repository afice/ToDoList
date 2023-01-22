//
//  ItemModel.swift
//  ToDoList
//
//  Created by Вадим Эфис on 21.12.2022.
//

import Foundation



struct ItemModel: Identifiable {
    let id: String
    let title: String
    let isCompleted: Bool
    
    init(id: String = UUID().uuidString,title: String, isCompleted: Bool) {
        self.id = UUID().uuidString
        self.title = title
        self.isCompleted = isCompleted
    }
    
}
