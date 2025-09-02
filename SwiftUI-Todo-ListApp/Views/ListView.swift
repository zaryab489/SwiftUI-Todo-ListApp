//
//  ListView.swift
//  SwiftUI-Todo-ListApp
//
//  Created by Rana Zaryab on 25/08/2025.
//

import SwiftUI

struct ListView: View {
    
    @EnvironmentObject var listViewModel: ListViewModel
    
    var body: some View {
        ZStack{
            if listViewModel.items.isEmpty {
                NoItemsView()
            }
            else {
                List {
                           ForEach(listViewModel.items) { item in
                           ListRowView(item: item)
                                   .onTapGesture {
                                       withAnimation(.linear) {
                                           listViewModel.updateItem(item: item)
                                       }
                                   }
                           }
                           .onDelete(perform: listViewModel.deleteItem)
                           .onMove(perform: listViewModel.moveItem)
                       }
                       .listStyle(PlainListStyle())
            }
        }
       
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
    .environmentObject(ListViewModel())
    
}
