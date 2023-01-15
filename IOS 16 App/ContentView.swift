//
//  ContentView.swift
//  IOS 16 App
//
//  Created by Kanishka Jayarathna on 2023-01-15.
//

import SwiftUI

struct ContentView: View {
    
    @State var total = "100" // bindn variable for user entered amount
    @State var tipPercent = 15.0
    
    var body: some View {
        VStack {
            HStack {
                Image(systemName: "dollarsign.circle.fill") // sysmbol which is next to the title
                    .imageScale(.large)
                .foregroundColor(.accentColor)
                .font(.title)
                Text("Tip Calculator") // this is the title
                    .font(.largeTitle)
                    .fontWeight(.bold)
            }
            HStack{
                Text("Rs.")
                TextField("Amount", text: $total)
            }
            
            HStack{
                Slider(value: $tipPercent, in: 1...30, step: 1.0)
                Text("\(Int(tipPercent))")
                Text("%")
            }
            if let totalNo = Double(total)
            {
                Text("Tip Amount: Rs.\(totalNo * tipPercent / 100, specifier: "%0.2f")")
            } else {
                Text("Enter a valid number!")
            }
            
            
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
