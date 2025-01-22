//
//  ContentView.swift
//  sf_symbols_basic_ui
//
//  Created by Amos Reginald Jr. on 1/21/25.
//

import SwiftUI

struct ContentView: View
{
    //@State var ttoggle: Bool = false
    let sf_icons: [String] = ["person.circle", "person.circle.fill",                         "figure.walk", "figure.run",
                            "plus.circle", "plus.circle.fill"]
    @State private var icon: String = "drop.halffull"
    
    let colors: [Color] = [.red, .blue, .yellow, .green,
                           .pink, .black, .orange, .purple]
    @State private var color: Color = .gray
    
    @State private var counter: Int = 0
    
    var body: some View
    {
        HStack
        {
//            Image(systemName: icon)
//                //.resizable()
//                .font(.system(size: 100, weight: .regular))
//                .foregroundColor(color)
//                .onTapGesture(count: 1) {
//                    icon = sf_icons[counter]
//                    color = colors[counter]
//                    
//                    counter += 1
//                    
//                    print(counter)
//                    if (counter == sf_icons.endIndex)
//                    {
//                        counter = 0
//                    }
//                }
            
            
            SpawnImage(icon: sf_icons[counter], color: colors[counter], counter: counter)
                .onTapGesture(count: 1) {
                    icon = sf_icons[counter]
                    color = colors[counter]
            
                    counter += 1
            
                    print(counter)
                    if (counter == sf_icons.endIndex)
                    {
                        counter = 0
                    }
                }
            
        }
    }
}

func SpawnImage(icon: String, color: Color, counter: Int) -> some View
{
    Image(systemName: icon)
        //.resizable()
        .font(.system(size: 100, weight: .regular))
        .foregroundColor(color)
//        .onTapGesture(count: 1) {
//            icon = sf_icons[counter]
//            color = colors[counter]
//            
//            counter += 1
//            
//            print(counter)
//            if (counter == sf_icons.endIndex)
//            {
//                counter = 0
//            }
//         }
}
 

#Preview
{
    ContentView()
}
