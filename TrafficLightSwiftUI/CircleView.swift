//
//  ColorCircleView.swift
//  TrafficLightSwiftUI
//
//  Created by Vladyslav Haidaienko on 26.10.2021.
//

import SwiftUI

struct CircleView: View {
    let color: Color
    let opacity: Double
    var body: some View {
            Circle()
                .foregroundColor(color)
                .frame(width: 130, height: 130)
                .overlay(Circle().stroke(.white, lineWidth: 4))
                .opacity(opacity)
    }
}

struct CircleView_Previews: PreviewProvider {
    static var previews: some View {
        CircleView(color: .red, opacity: 1)
    }
}
