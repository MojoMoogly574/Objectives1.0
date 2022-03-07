//
//  AddView.swift
//  Objectives1.0
//
//  Created by Joseph DeWeese on 3/6/22.
//

import SwiftUI

struct AddView: View {
    
    @EnvironmentObject var listViewModel: ListViewModel
    @Environment(\.presentationMode) var presentationMode
    @State var textFieldText: String = ""
    
    
    
    var body: some View {
        ScrollView {
            VStack {
                TextField("Add objective here...", text: $textFieldText)
                    .padding(.horizontal)
                    .frame(height:55)
                    .background(Color(hue: 0.565, saturation: 0.065, brightness: 0.674, opacity: 0.147))
                .cornerRadius(10)
                
                Button(action: saveButtonPressed, label:  {
                    
                    Text("Save")
                        .foregroundColor(.white)
                        .font(.headline)
                        .frame(height: 55)
                        .frame(maxWidth: .infinity)
                        .background(Color.accentColor)
                        .cornerRadius(10)
                })
            }
            .padding(14)
        }
        .navigationTitle("Add Objective📝")
    }
    func saveButtonPressed () {
        listViewModel.addItem(title: textFieldText)
        presentationMode.wrappedValue.dismiss()
        
    }
}

struct AddView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            AddView()
        }
        .environmentObject(ListViewModel())
    }
}
