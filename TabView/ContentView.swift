//
//  ContentView.swift
//  TabView
//
//  Created by Sopnil Sohan on 4/10/21.
//

import SwiftUI

struct ContentView: View {
    
    private var img:[String] = ["1","2","3","4","5"]
    
    var body: some View {
        
        TabView {
            TabView {
                ForEach(img, id: \.self) {img in
                    Image(img)
                        .resizable()
                }
            }
            .tabViewStyle(PageTabViewStyle())
        }
        .frame(width: UIScreen.main.bounds.width - 50, height: 180, alignment: .top)
        .cornerRadius(25)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
