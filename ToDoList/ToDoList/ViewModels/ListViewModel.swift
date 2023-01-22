//
//  ListViewModel.swift
//  ToDoList
//
//  Created by Вадим Эфис on 22.12.2022.
//

import Foundation


class ListViewModel: ObservableObject {
    
    @Published var items: [ItemModel] = []
    
    init () {
        getItems()
    }
    
    
    func getItems() {
        let newItems = [
            ItemModel(title: "Первая задание!)", isCompleted: false),
            ItemModel(title: "Второе дело)", isCompleted: true),
            ItemModel(title: "Третье!", isCompleted: false),
            
        ]
        items.append(contentsOf: newItems)
    }
    
    func deleteItem(indexSet: IndexSet) {
        items.remove(atOffsets: indexSet)
    }
    func moveItem (from: IndexSet, to: Int){
        items.move(fromOffsets: from, toOffset: to)
    }
    func addItem (title: String) {
        let newItem = ItemModel(title: title, isCompleted: false)
        items.append(newItem)
    }
    func updateItem(item: ItemModel) {
        

        if let index = items.first(where: { $0.id == item.id }) {
            items[index] = ItemModel(title: item.title, isCompleted: !item.isCompleted)
        }
        
    }
}
