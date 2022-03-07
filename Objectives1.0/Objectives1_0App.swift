//
//  Objectives1_0App.swift
//  Objectives1.0
//
//  Created by Joseph DeWeese on 3/6/22.
//

import SwiftUI
 /*
  MVVM Architecture
  */
@main
struct Objectives1_0App: App {
    
    
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
