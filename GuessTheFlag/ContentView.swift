//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by jazeps.ivulis on 21/08/2023.
//

import SwiftUI

struct ContentView: View {
    @State private var showingAlert = false
    
    var body: some View {
        ZStack {
            AngularGradient(gradient: Gradient(colors: [.red, .yellow, .green, .blue, .purple, .cyan, .red]), center: .center)
            
            VStack(spacing: 20) {
                Text("Hello, world!")
                
                HStack(spacing: 20) {
                    Text("1")
                    Text("2")
                    Text("3")
                }
                
                ZStack {
                    Text("Your content")
                        .foregroundStyle(.secondary)
                        .padding(5)
                        .background(.ultraThinMaterial)
                }
                .frame(width: 200, height: 50)
                .background(.red)
                
                Group {
                    Button("Delete", role: .destructive, action: executeDelete)
                    Button("Button 1") {}
                        .buttonStyle(.bordered)
                    Button("Button 2", role: .destructive) {}
                        .buttonStyle(.bordered)
                    Button("Button 3") {}
                        .buttonStyle(.borderedProminent)
                    Button("Button 4", role: .destructive) {}
                        .buttonStyle(.borderedProminent)
                    Button("Button 5") {}
                        .buttonStyle(.borderedProminent)
                        .tint(.mint)
                    Button {
                        print("Button was tapped!")
                    } label: {
                        Text("Tap me!")
                            .padding()
                            .foregroundColor(.white)
                            .background(.red)
                    }
                    Button {
                        print("Edit button was tapped!")
                    } label: {
                        Label("Edit", systemImage: "pencil")
                    }
                    
                    Image(systemName: "pencil")
                        .renderingMode(.original)
                    
                    Button("Show alert") {
                        showingAlert = true
                    }
                    .alert("Important message", isPresented: $showingAlert) {
                        Button("Delete", role: .destructive) { }
                        Button("Cancel", role: .cancel) { }
                    } message: {
                        Text("Please read this")
                    }
                }
            }
        }
    }
    
    func executeDelete() {
        print("Now deleting")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
