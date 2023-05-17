//
//  ContentView.swift
//  SwiftUI_CustomViewSet
//
//  Created by Carki on 2023/05/17.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            CustomButton()
                .setType(type: .normal)
                .setCornorRadius(radius: 12)
                .setTitle(title: "커스텀 버튼")
                .setTitleFont(font: .body)
                .setTitleColor(color: .black)
                .setBackgroundColor(color: .green)
                .setBorderColor(color: .red)
                .setBorderWidth(width: 3)
                .buttonClikced {
                    print("Hello Custom Button!")
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
