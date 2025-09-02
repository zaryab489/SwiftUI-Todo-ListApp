//
//  ListViewModel.swift
//  SwiftUI-Todo-ListApp
//
//  Created by Rana Zaryab on 29/08/2025.
//

import Foundation

/*
 CRUD FUNCTIONS
 Create
 Read
 Update
 Delete
 
 */

class ListViewModel: ObservableObject {
    
    @Published var items: [ItemModel] = [] {
        didSet {
            saveitems()
        }
    }
    
    
    let itemsKey:String = "items_list"
    
    
    init() {
       getItems()
    }
    func getItems() {
        guard
            let data = UserDefaults.standard.data(forKey: itemsKey),
            let savedItems = try? JSONDecoder().decode([ItemModel].self, from: data)
        else { return}
        
        self.items = savedItems
    }
    
    func deleteItem(indexSet: IndexSet){
        items.remove(atOffsets: indexSet)
        
        
    }
    func moveItem(from:IndexSet, to: Int){
        items.move(fromOffsets: from, toOffset: to)
        
    }
    func addItem(title: String) {
        let newItem = ItemModel(title: title, isCompleted: false)
        items.append(newItem)
    }
    func updateItem (item: ItemModel) {
        
//        if let index = items.firstIndex { existingItem in
//            return existingItem.id == item.id
//        } {
//            // run this code
//            
//        }
        if let index = items.firstIndex(where: { $0.id == item.id }) {
            items[index] = item.updateCompletion()
            
        }
    }
    func saveitems(){
        if let encodedData = try? JSONEncoder().encode(items) {
            UserDefaults.standard.setValue(encodedData, forKey: itemsKey)
        }
    }
}
