//
//  ListRowView.swift
//  SwiftUI-Todo-ListApp
//
//  Created by Rana Zaryab on 25/08/2025.
//

import SwiftUI

struct ListRowView: View {
    let item: ItemModel
    var body: some View {
        HStack {
            Image(systemName: item.isCompleted ? "checkmark.circle": "circle")
                .foregroundColor(item.isCompleted ? .green : .red)
            Text(item.title)
            Spacer()
        }
        .font(.title2)
        .padding(.vertical,8)
    }
}


#Preview {
    var item1 = ItemModel(title: "First item!", isCompleted: false)
    var item2 = ItemModel(title: "Second item!", isCompleted: true)
   // ListRowView(title: "This is the first item!")
     //var previews: some View {
        Group {
            ListRowView(item: item1)
            ListRowView(item: item2)
        }
   
       .previewLayout(.sizeThatFits)
   // }
}
