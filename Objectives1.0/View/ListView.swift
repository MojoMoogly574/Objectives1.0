//
//  ListView.swift
//  Objectives1.0
//
//  Created by Joseph DeWeese on 3/6/22.
//

import SwiftUI

struct ListView: View {
    
    @State var items: [String] = ["This is the first title.",
    "This is the second title.", "This is the third!"
    ]
    
    
    
    
    var body: some View {
        List {
            ForEach(items, id: \.self) { item in
                ListRowView(title: item)
            }
           
    }
        .listStyle(PlainListStyle())
        .navigationTitle("Objective List 〽️")
        .navigationBarItems(leading: EditButton(),
                            trailing:
                                NavigationLink("Add", destination: AddView())
        )
}
    
}
struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ListView()
        }
    }
}

