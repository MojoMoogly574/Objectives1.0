//
//  ListView.swift
//  Objectives1.0
//
//  Created by Joseph DeWeese on 3/6/22.
//

import SwiftUI

struct ListView: View {
   //Properties...
    @EnvironmentObject var listViewModel: ListViewModel
   
    
    var body: some View {
        List {
            ForEach(listViewModel.items) { item in
                ListRowView(item: item)
            }
            .onDelete(perform: listViewModel.deleteItem)
            .onMove(perform: listViewModel.moveItem)
        }
        .listStyle(PlainListStyle())
        .navigationTitle("Objective List 〽️")
        .navigationBarItems(leading: EditButton(),
                            trailing:
                                NavigationLink("Add", destination: AddView())
        )
    }//:VIEW
   
    
}
struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ListView()
        }.environmentObject(ListViewModel())
    }
}

