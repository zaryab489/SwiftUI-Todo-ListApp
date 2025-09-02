//
//  itemModel.swift
//  SwiftUI-Todo-ListApp
//
//  Created by Macbook Pro on 27/08/2025.
//

import Foundation

// immutable Struct

struct ItemModel: Identifiable, Codable {
    
    let id: String
    let title: String
    let isCompleted: Bool
    
    init(id: String = UUID().uuidString, title: String, isCompleted: Bool) {
        self.id = id
        self.title = title
        self.isCompleted = isCompleted
        
    }
    func updateCompletion()-> ItemModel {
        return ItemModel(id: id, title: title, isCompleted: !isCompleted)
    }
}
