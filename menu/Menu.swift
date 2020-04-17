//
//  Menu.swift
//  menu
//
//  Created by wsk on 4/17/20.
//  Copyright © 2020 wsk. All rights reserved.
//

import SwiftUI

public struct Menu: View {
    
    @Binding var isOpen: Bool
    
    public var body: some View {
        menu
    }
}

struct Menu_Previews: PreviewProvider {
    
    @State static var isOpen: Bool = true
    
    static var previews: some View {
        Menu(isOpen: $isOpen)
    }
}

extension Menu {
    
    var close: some View {
        Button(action: {
            self.isOpen.toggle()
        }) {
            Image(systemName: "xmark")
        }
        .padding()
    }
    
    var menu: some View {
        
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
