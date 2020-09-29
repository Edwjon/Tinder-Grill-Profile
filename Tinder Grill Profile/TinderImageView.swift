//
//  TinderImageView.swift
//  Tinder Grill Profile
//
//  Created by Edward Pizzurro Fortun on 11/6/18.
//  Copyright © 2018 Pencil. All rights reserved.
//

import UIKit

class TinderImageview: UIImageView {
    
    
    let label: UILabel = {
        let label = UILabel()
        label.textColor = .white
        label.font = UIFont.boldSystemFont(ofSize: 18)
        
        label.layer.shadowOpacity = 0.7
        label.layer.shadowOffset = .zero
        return label
    }()
    
    @IBInspectable
    var imageIndex: NSNumber! {
        
        didSet {
            
            let imageName = "daenerys\(imageIndex.stringValue)"
            self.image = UIImage(named: imageName)
            
            layer.cornerRadius = 5
            label.text = imageIndex.stringValue
        }
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        addSubview(label)
        label.translatesAutoresizingMaskIntoConstraints = false
        
        label.topAnchor.constraint(equalTo: topAnchor, constant: 8).isActive = true
        label.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 8).isActive = true
    }
    
}
