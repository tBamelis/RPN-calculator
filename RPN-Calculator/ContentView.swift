//
//  ContentView.swift
//  RPN-Calculator
//
//  Created by Thibeau Bamelis on 08/10/2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
            

            
            ForEach(0..<10)
            {
                i in
                Button(action: {addNumber(number: i)})
                {
                    Text("\(i)")
                }.border(Color.black,).frame(width: 50,height: 50)
                
            }
            
            
            Button(action: {print(calculator)
            }) {
                Text("Print Last")
            }
            
            
            
            
            
            

        }
        .padding()
    }
}
var calculator = [Int]()
func addNumber(number: Int)
{
    calculator.append(number);
}

#Preview {
    ContentView()
}
