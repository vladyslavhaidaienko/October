//
//  StartButton.swift
//  TrafficLightSwiftUI
//
//
//  Created by Vladyslav Haidaienko on 26.10.2021.
//

import SwiftUI

struct StartButton: View {
    
    let title: String
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Text(title)
                .font(.title)
                .frame(maxWidth: 130)
                .foregroundColor(.white)
        }
        .buttonStyle(.bordered)
        .cornerRadius(25)
        .tint(.blue)
        .overlay(RoundedRectangle(cornerRadius: 25)
        .stroke(.white, lineWidth: 4))
    }
}

struct StartButton_Previews: PreviewProvider {
    static var previews: some View {
        StartButton(title: "START", action: {})
    }
}
