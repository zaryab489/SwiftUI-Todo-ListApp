//
//  ListView.swift
//  SwiftUI-Todo-ListApp
//
//  Created by Rana Zaryab on 25/08/2025.
//

import SwiftUI

struct ListView: View {
    @State var items: [itemModel] = [
        itemModel(title: "This is the first item!", isCompleted: false),
        itemModel(title: "This is second!", isCompleted: true),
        itemModel(title: "Third!", isCompleted: false),
    ]
    var body: some View {
        List {
            ForEach(items) { item in
            ListRowView(item: item)
            }
            .onDelete(perform: deleteItem)
            .onMove(perform: moveItem)
        }
        .listStyle(PlainListStyle())
        .navigationTitle("Todo List 📝")
        .navigationBarItems(leading: EditButton(), trailing:
        NavigationLink("Add", destination: AddView())
        )
        }
    func deleteItem(indexSet: IndexSet){
        items.remove(atOffsets: indexSet)
        
    }
    func moveItem(from:IndexSet, to: Int){
        items.move(fromOffsets: from, toOffset: to)
        
    }
}

#Preview {
    NavigationView {
        ListView()
    }
    
}
