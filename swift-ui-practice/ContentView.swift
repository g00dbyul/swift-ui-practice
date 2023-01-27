//
//  ContentView.swift
//  swift-ui-alert
//
//  Created by Godbyul on 2023/01/27.
//

import SwiftUI

struct ContentView: View {
    @State private var showingAlert = false
    @State private var showingActionSheet = false
    
    var body: some View {
        Button("Alert") {
            showingAlert = true
        }
        .padding()
        .alert("Message", isPresented: $showingAlert) {
            Button("Destructive", role: .destructive) {}
            Button("Confirm", role: .cancel) {}
        }
        
        Button("Action Sheet") {
            showingActionSheet = true
        }
        .padding()
        .confirmationDialog("Action Sheet", isPresented: $showingActionSheet) {
            Button("Destructive", role: .destructive) {}
            Button("Cancel", role: .cancel) {}
        }
        
        Button(action: {
            print("Button Clicked")
        }, label: {
            Text("Action")
                .foregroundColor(.white)
                .padding()
                .frame(width: 200)
        }).buttonStyle(.borderedProminent)
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
