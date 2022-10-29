//
//  ContentView.swift
//  cw6
//
//  Created by Moahmed Azab on 26/10/2022.
//

import SwiftUI

struct ContentView: View {
    
    @State var height = ""
    @State var weight = ""
    
    @State var BMI = ""
    @State var status = ""
    
    var body: some View {
        VStack {
            Image("bmi png")
                .resizable()
                .scaledToFit()
                .frame(width: 150,height: 150)
            Text("enter your height and your weight")
                .font(.largeTitle)
            TextField( "enter your height in meters", text: $height)
            TextField("enter your weight in kilo grams", text: $weight)
            
            
            Button(action: {
                BMICalculator(height: Double(height) ?? 1.0, weight: Double(weight) ?? 1.0)
            }, label: {
                Text("calculate")
                    .font(.largeTitle)
                    .foregroundColor(.black)
            })
            .frame(width:350,height: 60 )
            .background(Color.red)
            .cornerRadius(12)
            
            Text("BMI = \(BMI)")
            Text("status = \(status)")
        }
    }
    func BMICalculator(height:Double,weight:Double) {
        var xxxx =  weight / (height * height)
        if xxxx <= 20 {
            status = "weak"
        } else if xxxx <= 25 {
            status = "good"
        } else {
            status="fat"
        }
        BMI =  "\(xxxx)"
        
    }
}
    
            
            
        



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
