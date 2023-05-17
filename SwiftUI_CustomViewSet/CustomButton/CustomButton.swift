//
//  CustomButton.swift
//  SwiftUI_CustomViewSet
//
//  Created by Carki on 2023/05/17.
//

import SwiftUI

struct CustomButton: View {
    
    //Action
    private var buttonClicked: (() -> Void)?
    
    //Type
    private var buttonType: ButtonType?
    
    //Title
    private var buttonTitle: String?
    private var buttonTitleColor: Color?
    private var buttonTitleFont: Font?
    
    //Background
    private var buttonBackgroundColor: Color?
    
    //Border
    private var buttonBorderWidth: CGFloat?
    private var buttonBorderColor: Color?
    private var buttonCornorRadius: CGFloat?
    
    //Height
    private var buttonHeight: CGFloat?
    
    var body: some View {
        Button {
            buttonClicked?()
        } label: {
            if buttonCornorRadius != nil {
                //Capsule().stroke(Color.gray.opacity(0.2), lineWidth: 1)
                RoundedRectangle(cornerRadius: buttonCornorRadius ?? 0)
                    .foregroundColor((buttonType == .clear) ? .clear : buttonBackgroundColor ?? .orange)
                    .overlay(
                        RoundedRectangle(cornerRadius: buttonCornorRadius ?? 0)
                            .stroke(buttonBorderColor ?? .red, lineWidth: buttonBorderWidth ?? 1.5)
                            .overlay(
                                Text(buttonTitle ?? "SetTitle First!")
                                    .foregroundColor(buttonTitleColor ?? .blue)
                                    .font(buttonTitleFont ?? .title)
                            )
                    )
                
            } else {
                Rectangle()
                    .foregroundColor((buttonType == .clear) ? .clear : buttonBackgroundColor ?? .orange)
                    .overlay(
                        Rectangle()
                            .stroke(buttonBorderColor ?? .orange, lineWidth: buttonBorderWidth ?? 1.5)
                            .overlay(
                                Text(buttonTitle ?? "SetTitle First!")
                                    .foregroundColor(buttonTitleColor ?? .blue)
                                    .font(buttonTitleFont ?? .title)
                            )
                    )
            }
        }
        .frame(height: buttonHeight ?? 50)
        .frame(maxWidth: .infinity)
    }
}

extension CustomButton {
    
    //Action
    func buttonClikced(event: (() -> Void)?) -> Self {
        var copy = self
        copy.buttonClicked = event
        
        return copy
    }
    
    //Type
    func setType(type: ButtonType?) -> Self {
        var copy = self
        copy.buttonType = type
        
        return copy
    }
    
    //Title
    func setTitle(title: String?) -> Self {
        var copy = self
        copy.buttonTitle = title
        
        return copy
    }
    
    func setTitleColor(color: Color?) -> Self {
        var copy = self
        copy.buttonTitleColor = color
        
        return copy
    }
    
    func setTitleFont(font: Font?) -> Self {
        var copy = self
        copy.buttonTitleFont = font
        
        return copy
    }
    
    //Background
    func setBackgroundColor(color: Color?) -> Self {
        var copy = self
        copy.buttonBackgroundColor = color
        
        return copy
    }
    
    //Border
    func setBorderWidth(width: CGFloat?) -> Self {
        var copy = self
        copy.buttonBorderWidth = width
        
        return copy
    }
    
    func setBorderColor(color: Color?) -> Self {
        var copy = self
        copy.buttonBorderColor = color
        
        return copy
    }
    
    func setCornorRadius(radius: CGFloat?) -> Self {
        var copy = self
        copy.buttonCornorRadius = radius
        
        return copy
    }
    
    //Height
    func setHeight(height: CGFloat?) -> Self {
        var copy = self
        copy.buttonHeight = height
        
        return copy
    }
}

struct CustomButton_Previews: PreviewProvider {
    static var previews: some View {
        CustomButton()
            .setType(type: .normal)
            .setCornorRadius(radius: 12)
            .setTitle(title: "커스텀 버튼")
            .setTitleFont(font: .body)
            .setTitleColor(color: .black)
            .setBackgroundColor(color: .green)
            .setBorderColor(color: .gray)
            .setBorderWidth(width: 3)
            .buttonClikced {
                print("Hello Custom Button!")
            }
    }
}
