//
//  ContentView.swift
//  sf_symbols_basic_ui
//
//  Created by Amos Reginald Jr. on 1/21/25.
//

import SwiftUI

struct ContentView: View
{
    @State private var icon: String = "drop.halffull" //default
    let sf_icons: [String] = ["person.circle", "person.circle.fill",                                "figure.walk", "figure.run",
                              "plus.circle", "plus.circle.fill"]
    
    @State private var color: Color = .gray //default
    let colors: [Color] = [.red, .blue, .yellow, .green,
                           .pink, .black, .orange, .purple]
    
    //private var user_preffered_icons = [0]
    
    @State private var counter: Int = 0
    
    private let uniform_radius: CGFloat = 20
    
    private let user_tapped: String = "DEFAULT"
    
    
    
    var body: some View
    {
        VStack(alignment: HorizontalAlignment.center)
        {
            Text("Select your preferred icon")
                .font(.title)
                .frame(width: 335, height: 40)
                .background(.gray)
                .foregroundColor(.white)
                .cornerRadius(uniform_radius)
                .padding(.bottom, 400)
        }//end of VStack
        
        
        HStack(alignment: VerticalAlignment.center)
        {
            SpawnImage(icon: sf_icons[counter], color: colors[counter], counter: counter)
                
            SpawnImage(icon: sf_icons[counter + 1], color: colors[counter + 1], counter: counter + 1)
        }
        .padding(.bottom, 200)
//        .onTapGesture(count: 1)
//        {
//            //print(icon)
//
//            icon = sf_icons[counter]
//            color = colors[counter]
//    
//            counter += 2
//    
//            print(counter)
//            if (counter == sf_icons.endIndex)
//            {
//                counter = 0
//            }
        }//end of HStack
        
        
    }
}

func SpawnImage(icon: String, color: Color, counter: Int) -> some View
{
    Image(systemName: icon)
        .font(.system(size: 100, weight: .regular))
        .foregroundColor(color)
}
 

#Preview
{
    ContentView()
}
