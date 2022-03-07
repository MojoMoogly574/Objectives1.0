//
//  ListtRowView.swift
//  Objectives1.0
//
//  Created by Joseph DeWeese on 3/6/22.
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

struct ListRowView_Previews: PreviewProvider {
    let title: String
    
    static var previews: some View {
        ListRowView(title: "This is the first title")
    }
}
