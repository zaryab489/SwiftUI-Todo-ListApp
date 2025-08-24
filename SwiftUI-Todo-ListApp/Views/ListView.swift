//
//  ListView.swift
//  SwiftUI-Todo-ListApp
//
//  Created by Macbook Pro on 25/08/2025.
//

import SwiftUI

struct ListView: View {
    @State var items: [String] = [
        "This is the first item!",
        "This is the second",
        "Third"
    ]
    var body: some View {
        List {
            ForEach(items, id: \.self) { item in
                ListRowView(title: item)
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
