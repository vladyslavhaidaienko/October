//
//  ContentView.swift
//  TrafficLightSwiftUI
//
//
//  Created by Vladyslav Haidaienko on 26.10.2021.
//

import SwiftUI

enum CurrentLight {
    case red, yellow, green
}

struct ContentView: View {
    
    @State private var redLight = 0.3
    @State private var yellowLight = 0.3
    @State private var greenLight = 0.3
    
    @State private var currentLight = CurrentLight.red
    
    @State private var titleOfButton = "START"
    
    var body: some View {
        ZStack {
            Color(.gray)
                .ignoresSafeArea()
            
            VStack {
                CircleView(color: .red, opacity: redLight)
                    .padding(.bottom, 15.0)
                CircleView(color: .yellow, opacity: yellowLight)
                    .padding(.bottom, 15.0)
                CircleView(color: .green, opacity: greenLight)
                Spacer()
                StartButton(title: titleOfButton) {
                    if titleOfButton == "START" {
                        titleOfButton = "NEXT"
                    }
                    changeColor()
                }
            }.padding(.top, 16.0)
        }
    }
    
    private func changeColor() {
        
        let lightIsOn = 1.0
        let lightIsOff = 0.3
        
        switch currentLight {
        case .red:
            currentLight = .yellow
            greenLight = lightIsOff
            redLight = lightIsOn
        case .yellow:
            currentLight = .green
            redLight = lightIsOff
            yellowLight = lightIsOn
        case .green:
            currentLight = .red
            greenLight = lightIsOn
            yellowLight = lightIsOff
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
