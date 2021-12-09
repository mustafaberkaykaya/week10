//
//  TwoLinedButton.swift
//  customUI
//
//  Created by Mustafa Berkay Kaya on 8.12.2021.
//

import UIKit

struct TwoLinedButtonViewModel {
    let primaryText: String
    let seconadryText: String
}

final  class TwoLinedButton: UIButton {
    private let primaryLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 1
        label.textAlignment = .center
        label.textColor = .white
        label.font = .systemFont(ofSize: 20, weight: .semibold)
        return label
    }()
    
    private let secondaryLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 1
        label.textAlignment = .center
        label.textColor = .white
        label.font = .systemFont(ofSize: 18, weight: .regular)
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(primaryLabel)
        addSubview(secondaryLabel)
        clipsToBounds = true
        layer.cornerRadius = 8
        layer.borderWidth = 1
        layer.borderColor = UIColor.secondarySystemBackground
            .cgColor
        backgroundColor = .systemGreen
       
    }
    
    // swiftlint:disable all
    required init?(coder: NSCoder) {
      fatalError()
    }
    // swiftlint:enable all

    func configure(with viewModel: TwoLinedButtonViewModel) {
        primaryLabel.text = viewModel.primaryText
        secondaryLabel.text = viewModel.seconadryText
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        primaryLabel.frame = CGRect(x: 5, y: 0, width: frame.size.width - 10, height: frame.size.height / 2)
        secondaryLabel.frame = CGRect(x: 5, y: frame.size.height / 2, width: frame.size.width - 10, height: frame.size.height / 2)
    }
}
