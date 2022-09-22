//
//  ContentView.swift
//  PickerWithNavLink
//
//  Created by Arthur Sh on 21.09.2022.
//

import SwiftUI

let VIEWS_COUNT = 10

struct HomeView: View {
    
    @State private var viewSelection: Int?
    @State private var viewIndex = VIEWS_COUNT / 2
    
    var body: some View {
        NavigationView{
            
            VStack{
                
                
                Picker("select me:", selection: $viewIndex) {
                    
                    
                    ForEach(0..<VIEWS_COUNT, id: \.self) { index in
                        
                        
                        Text("\(index)")
                            .tag(index)
                        
                    }
                    
                }
                .pickerStyle(WheelPickerStyle())
                
                Button("Go to : \(viewIndex)") {
                    viewSelection = viewIndex
                }

                ForEach(0..<VIEWS_COUNT, id: \.self){ v in
                    
                    NavigationLink(destination: view0(selection: $viewSelection), tag: v, selection: $viewSelection, label: {})
                    
                }
                
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
