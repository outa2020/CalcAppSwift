//
//  myShadowView.swift
//  Calculator App
//
//  Created by macbook on 2018-02-20.
//  Copyright © 2018 mohamed. All rights reserved.
//

import UIKit

class myShadowView : UIView {
    
    let myLayer : CAGradientLayer = CAGradientLayer()
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        //shadow
        self.layer.shadowColor = UIColor.black.withAlphaComponent(0.8).cgColor
        self.layer.shadowRadius = 3
        self.layer.shadowOffset = CGSize(width: 3, height: 3)
        self.layer.opacity = 1
        
        //background
        let myLayer : CAGradientLayer = CAGradientLayer()
        myLayer.frame = CGRect(x: 0, y: 0, width: self.frame.size.width, height:self.frame.size.height)
        let firstColor = UIColor.init(red: 235/255, green: 235/255, blue: 241/255, alpha: 1).cgColor //wardi
        let secondColor = UIColor.init(red: 166/255, green: 219/255, blue: 226/255, alpha: 1).cgColor //9rib l zzra9
        
        // start and end points for GRADIENT effect
        myLayer.startPoint = CGPoint(x: 0, y: 0.4)
        myLayer.endPoint = CGPoint(x: 0, y: 0.7)
        
        myLayer.colors  = [firstColor, secondColor]
        
        myLayer.zPosition = -1
        self.layer.addSublayer(myLayer)
        
        }
    
    override func layoutSubviews() {
        super.layoutSubviews()
                myLayer.frame = CGRect(x: 0, y: 0, width: self.frame.size.width, height:self.frame.size.height)
    }
    
    
}
