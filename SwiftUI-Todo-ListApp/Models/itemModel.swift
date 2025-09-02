//
//  itemModel.swift
//  SwiftUI-Todo-ListApp
//
//  Created by Macbook Pro on 27/08/2025.
//

import Foundation

struct ItemModel: Identifiable {
    
    let id: String = UUID().uuidString
    let title: String
    let isCompleted: Bool
    
}
