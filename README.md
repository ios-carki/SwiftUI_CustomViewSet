

# SwiftUI_CustomViewSet
- This repository is made for the swiftUI challenge<br><br>
- Project Info<br><br>
[![Language](https://img.shields.io/badge/language-Swift%205.0-orange.svg)](https://swift.org)
![UI](https://img.shields.io/badge/UI-SwiftUI-blue.svg)
![Xcode](https://img.shields.io/badge/Xcode-11.2.1+-green)
![Version](https://img.shields.io/badge/iOS-14.0-yellow)

# 1. Custom Button
### Function
```Swift:CustomButton.swift
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

```
### Useage
```Swift:CustomButton.swift
CustomButton()
    .setType(type: .normal)
    .setCornorRadius(radius: 12)
    .setTitle(title: "Custom Button")
    .setTitleFont(font: .body)
    .setTitleColor(color: .black)
    .setBackgroundColor(color: .green)
    .setBorderColor(color: .gray)
    .setBorderWidth(width: 3)
    .buttonClikced {
        print("Hello Custom Button!")
    }
```
### Result
<img width="780" alt="스크린샷 2023-05-18 오전 12 34 17" src="https://github.com/ios-carki/SwiftUI_CustomViewSet/assets/44957712/bc44c420-e23b-43c4-9562-80edca189adc">

### Next Step
- Add Config For CustomButton (Default Setting File)
- Custom Cell

