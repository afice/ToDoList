//
//  ListView.swift
//  ToDoList
//
//  Created by Вадим Эфис on 21.12.2022.
//

import SwiftUI

struct ListView: View {
    
    @EnvironmentObject var listViewModel: ListViewModel
    
    
    var body: some View {
        List {
            ForEach(listViewModel.items) {
                item in
                ListRowView(item: item)
                    .onTapGesture {
                        withAnimation(.linear){
                            
                        }
                    }
            }
            .onDelete(perform: listViewModel.deleteItem)
            .onMove(perform: listViewModel.moveItem)
        }
        .listStyle(PlainListStyle())
        .navigationTitle("Заметки 👩‍💻")
        .navigationBarItems(
            leading: EditButton(),
            trailing:
            NavigationLink("Добавить", destination: AddView())
        )
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ListView()
        }
        .environmentObject(ListViewModel())
    }
}


