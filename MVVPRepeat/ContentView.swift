//
//  ContentView.swift
//  MVVPRepeat
//
//  Created by Авазбек Надырбек уулу on 15.07.25.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var viewModel: AppViewModel
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
            Button {
                
            } label: {
                Text("Press me")
            }
            
            NavigationLink {
                SecondView()
                    .environmentObject(viewModel )
                    
            } label: {
                Text("Second View")
            }

        }
        .padding()
    }
}

#Preview {
    ContentView()
}
