//
//  ListViewModel.swift
//  SwiftUI-Todo-ListApp
//
//  Created by Rana Zaryab on 29/08/2025.
//

import Foundation

class ListViewModel {
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
}
