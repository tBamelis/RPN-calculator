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
            
            
            Button(action: {print(add())
}) {
                Text("+")
            }
            Button(action: {print(sub())
            }) {
                Text("-")
            }
            Button(action: {print(dev())
            }) {
                Text("/")
            }
            Button(action: {print(mult())
            }) {
                Text("X")
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



func add() ->Int?
{
    if(calculator.count >= 2)
    {
        var num1 = calculator.removeLast();
        var num2 = calculator.removeLast();
        return num1 + num2
    }
    else
    {
        return nil
    }
}

func sub() ->Int?
{
    if(calculator.count >= 2)
    {
        var num1 = calculator.removeLast();
        var num2 = calculator.removeLast();
        return num1 - num2
    }
    else
    {
        return nil
    }
}

func dev() ->Int?
{
    if(calculator.count >= 2)
    {
        var num1 = calculator.removeLast();
        var num2 = calculator.removeLast();
        return num1 / num2
    }
    else
    {
        return nil
    }
}

func mult() ->Int?
{
    if(calculator.count >= 2)
    {
        var num1 = calculator.removeLast();
        var num2 = calculator.removeLast();
        return num1 * num2
    }
    else
    {
        return nil
    }
}

#Preview {
    ContentView()
}
