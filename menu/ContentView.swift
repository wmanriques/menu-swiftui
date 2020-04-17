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
            menu
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
    
    var menu: some View {
        
        var close: some View {
            Button(action: {
                self.isOpen.toggle()
            }) {
                Image(systemName: "xmark")
            }
            .padding()
        }
        
        return ZStack {
            Rectangle()
                .fill(Color.white)
                .edgesIgnoringSafeArea(.all)
            VStack{
                HStack{
                    Spacer()
                    close
                }
                Spacer()
                Text("menu")
                Spacer()
            }
        }
        .offset(x: isOpen ? 0 : -UIScreen.main.bounds.width)
            .animation(.default)
    }
}


