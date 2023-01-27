//
//  CustomButton.swift
//  OneTechFirst
//
//  Created by  Mukhammed Ali Khamzayev on 27.01.2023.
//

import UIKit

class CustomButton: UIButton {
    

    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func buttonStyle() {
        backgroundColor = .darkGray
        layer.cornerRadius = 44
    }
    
    
}
