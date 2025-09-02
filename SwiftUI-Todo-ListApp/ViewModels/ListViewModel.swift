//
//  ListViewModel.swift
//  SwiftUI-Todo-ListApp
//
//  Created by Rana Zaryab on 29/08/2025.
//

import Foundation

class ListViewModel: ObservableObject {
    
    @Published var items: [itemModel] = []
    init() {
       getItems()
    }
    func getItems() {
        let newItems = [
            itemModel(title: "This is the first item!", isCompleted: false),
            itemModel(title: "This is second!", isCompleted: true),
            itemModel(title: "Third!", isCompleted: false),
        ]
        items.append(contentsOf: newItems)
    }
    
    func deleteItem(indexSet: IndexSet){
        items.remove(atOffsets: indexSet)
        
    }
    func moveItem(from:IndexSet, to: Int){
        items.move(fromOffsets: from, toOffset: to)
        
    }
    func addItem(title: String) {
        let newItem = itemModel(title: title, isCompleted: false)
        items.append(newItem)
    }
    func updateItem (item: itemModel) {
        
//        if let index = items.firstIndex { existingItem in
//            return existingItem.id == item.id
//        } {
//            // run this code
//            
//        }
        if let index = items.firstIndex(where: { $0.id == item.id }) {
            items[index] = itemModel(title: item.title, isCompleted: !item.isCompleted)
            
        }
    }
}
