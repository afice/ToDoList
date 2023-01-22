//
//  ToDoListApp.swift
//  ToDoList
//
//  Created by Вадим Эфис on 21.12.2022.
//

import SwiftUI



@main
struct ToDoListApp: App {
    
    @StateObject var listViewModel: ListViewModel = ListViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ListView()
            }
            .environmentObject(listViewModel)
        }
    }
}
