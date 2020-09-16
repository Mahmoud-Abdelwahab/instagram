//
//  UIViewExtention.swift
//  InstaPhoto
//
//  Created by kasper on 9/16/20.
//  Copyright © 2020 Mahmoud Abdul-Wahab. All rights reserved.
//

import UIKit

extension UIView {
    func addSubviews(_ views : UIView...) {
        /// UIView... this means that u can pass anynumber f the parameters from this type
        for view in views {addSubview(view) }
    }
    
    
    /********** General constraints pin view to the edgs  i used it  to constraints the scroll view  ******************/
    
    func pinToTheEdges(of superView : UIView) {
        translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            topAnchor.constraint(equalTo: superview!.topAnchor),
            leadingAnchor.constraint(equalTo: superview!.leadingAnchor),
            trailingAnchor.constraint(equalTo: superview!.trailingAnchor),
            bottomAnchor.constraint(equalTo: superview!.bottomAnchor),
        ])
    }
    
    func anchor(top : NSLayoutYAxisAnchor? , paddingTop : CGFloat , leading : NSLayoutXAxisAnchor? , paddingLeft : CGFloat  , bottom : NSLayoutYAxisAnchor? , paddingBottom : CGFloat , trailling : NSLayoutXAxisAnchor?   , paddingRight : CGFloat , centerXTo : NSLayoutXAxisAnchor? , centerYTo : NSLayoutYAxisAnchor? , width : CGFloat = 0 , height : CGFloat = 0){
        
        translatesAutoresizingMaskIntoConstraints = false
        
        if let top = top{
            topAnchor.constraint(equalTo: top, constant: paddingTop).isActive = true
        }
        
        if let left = leading {
            leadingAnchor.constraint(equalTo: left, constant: paddingLeft).isActive = true
        }
        
        if let bottom = bottom {
            bottomAnchor.constraint(equalTo: bottom, constant: paddingBottom).isActive = true
        }
        
        if let right  = trailling {
            trailingAnchor.constraint(equalTo: right, constant: paddingRight).isActive = true
        }
        
        if let centerX = centerXTo {
            centerXAnchor.constraint(equalTo: centerX).isActive = true
        }
        
        if let centerY = centerYTo {
            centerYAnchor.constraint(equalTo: centerY).isActive = true
        }
        
        if width != 0 {
            widthAnchor.constraint(equalToConstant: width).isActive = true
        }
        
        if height != 0 {
            heightAnchor.constraint(equalToConstant: height).isActive = true
            
        }
    }
    
}
