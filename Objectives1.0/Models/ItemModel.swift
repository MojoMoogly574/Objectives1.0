//
//  ItemModel.swift
//  Objectives1.0
//
//  Created by Joseph DeWeese on 3/6/22.
//

import Foundation

struct ItemModel: Identifiable {
    
    let id: String = UUID().uuidString
    let title: String
    let isCompleted: Bool
}
