//
//  ListRowView.swift
//  SwiftUI-Todo-ListApp
//
//  Created by Macbook Pro on 25/08/2025.
//

import SwiftUI

struct ListRowView: View {
    let title: String
    var body: some View {
        HStack {
            Image(systemName: "checkmark.circle")
            Text(title)
            Spacer()
        }
    }
}


#Preview {
    ListRowView(title: "This is the first item!")
}
