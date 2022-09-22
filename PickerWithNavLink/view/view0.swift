//
//  view0.swift
//  PickerWithNavLink
//
//  Created by Arthur Sh on 21.09.2022.
//

import SwiftUI

struct view0: View {
    
   @Binding var selection: Int?
    
    var body: some View {
        VStack{
            Text("i AM VIEW: \(selection ?? 0)")
            
            
            Button("go back") {
                selection = nil
            }
        }
    }
}

