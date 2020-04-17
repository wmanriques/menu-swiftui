//
//  ContentView.swift
//  menu
//
//  Created by wsk on 4/17/20.
//  Copyright © 2020 wsk. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var isOpen: Bool = false
    
    var body: some View {
        ZStack {
            NavigationView{
                Text("content")
                .navigationBarItems(leading: burger)
            }
            Menu(isOpen: $isOpen)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

extension ContentView {
    
    var burger: some View {
        Button(action: {
            self.isOpen.toggle()
        }) {
            Image(systemName: "line.horizontal.3")
        }
    }
}


