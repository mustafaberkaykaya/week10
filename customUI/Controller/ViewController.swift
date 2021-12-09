//
//  ViewController.swift
//  customUI
//
//  Created by Mustafa Berkay Kaya on 8.12.2021.
//

import UIKit

class ViewController: UIViewController {
 
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let twoLineButton = TwoLinedButton(frame: CGRect(x: (view.frame.size.width - 300) / 2, y: 200, width: 300, height: 55))
        twoLineButton.configure(with: TwoLinedButtonViewModel(primaryText: "Start Free Trial", seconadryText: "3 days free, then $3.99/mo"))
        view.addSubview(twoLineButton)

        let iconButton = IconTextButton(frame: CGRect(x: (view.frame.size.width - 300) / 2, y: 60, width: 300, height: 55))
        iconButton.configure(with: IconTextButtonViewModel(text: "Book Flight", image: UIImage(systemName: "airplane"), background: .systemRed))
        view.addSubview(iconButton)
        
        let iconButton2 = IconTextButton(frame: CGRect(x: (view.frame.size.width - 300) / 2, y: 130, width: 300, height: 55))
        iconButton2.configure(with: IconTextButtonViewModel(text: "Delete Image",
                                                            image: UIImage(systemName: "trash.circle.fill"),
                                                            background: .systemBlue))
        view.addSubview(iconButton2)
      
        let iconButton3 = IconTextButton(frame: CGRect(x: (view.frame.size.width - 300) / 2, y: 270, width: 300, height: 55))
        iconButton3.configure(with: IconTextButtonViewModel(text: "Buy", image: UIImage(systemName: "cart"), background: .systemPink))
        view.addSubview(iconButton3)
        
        let iconButton4 = IconTextButton(frame: CGRect(x: (view.frame.size.width - 300) / 2, y: 340, width: 300, height: 55))
        iconButton4.configure(with: IconTextButtonViewModel(text: "Play", image: UIImage(systemName: "play"), background: .systemYellow))
        view.addSubview(iconButton4)
        
        let textField: CustomTextField = CustomTextField(frame: CGRect(x: (view.frame.size.width - 300) / 2, y: 420, width: 300, height: 40))
        view.addSubview(textField)
    }
}
