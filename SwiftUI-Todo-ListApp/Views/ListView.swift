//
//  ListView.swift
//  SwiftUI-Todo-ListApp
//
//  Created by Macbook Pro on 25/08/2025.
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
        }
        .listStyle(PlainListStyle())
        .navigationTitle("Todo List 📝")
        .navigationBarItems(leading: EditButton(), trailing:
        NavigationLink("Add", destination: AddView())
        )
        }
}

#Preview {
    NavigationView {
        ListView()
    }
    
}
