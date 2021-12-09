//
//  MyLabel.swift
//  customUI
//
//  Created by Mustafa Berkay Kaya on 9.12.2021.
//

import UIKit

class MyLabel: UILabel {

    // swiftlint:disable all
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    // swiftlint:enable all
  
    override init(frame: CGRect) {
        super.init(frame: frame)
      
        attributedText = NSAttributedString(string: "Hello World!")
        
        layer.borderWidth = 10
        layer.borderColor = UIColor.systemBlue.cgColor
    
        textAlignment = .center
       
    }

}
