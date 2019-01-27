//
//  myCustomButton.swift
//  MyButtonDesignSpike
//
//  Created by macbook on 2018-02-19.
//  Copyright © 2018 mohamed. All rights reserved.
//

import UIKit

class myClassButton : UIButton {
    //mlli kaytwlad l'objet
    override func awakeFromNib() { //mlli yallah taitzad l'objet dyalna
        super.awakeFromNib()
        //self.layer.cornerRadius = self.frame.size.height / 2
        self.layer.borderWidth = 1
        self.layer.borderColor = UIColor.white.cgColor
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        self.layer.cornerRadius = self.frame.size.height / 2

        
    }
    
}

