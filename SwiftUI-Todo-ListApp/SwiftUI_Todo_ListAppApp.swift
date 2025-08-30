//
//  SwiftUI_Todo_ListAppApp.swift
//  SwiftUI-Todo-ListApp
//
//  Created by Rana Zaryab on 25/08/2025.
//

import SwiftUI
/*
 MVVM Architecture
 
 Model - Data point
 View - UI
 ViewModel - manages Models for View
 
 */

@main
struct SwiftUI_Todo_ListAppApp: App {
    
    @StateObject var listViewModel: ListViewModel = ListViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationView{
                ListView()
            }
            .environmentObject(listViewModel)
        }
    }
}
