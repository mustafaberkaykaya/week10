//
//  CustomTextField.swift
//  customUI
//
//  Created by Mustafa Berkay Kaya on 9.12.2021.
//

import UIKit

class CustomTextField: UITextField {

    // swiftlint:disable all
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    // swiftlint:enable all
  
    override init(frame: CGRect) {
        super.init(frame: frame)
      
        layer.cornerRadius = 10
        layer.borderWidth = 1.5
        layer.borderColor = UIColor.lightGray.cgColor
        placeholder = "I am a custom textField"
        
    }
}
