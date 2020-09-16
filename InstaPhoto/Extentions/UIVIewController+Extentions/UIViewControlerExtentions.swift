//
//  UIViewControlerExtentions.swift
//  InstaPhoto
//
//  Created by kasper on 9/16/20.
//  Copyright © 2020 Mahmoud Abdul-Wahab. All rights reserved.
//

import UIKit

extension UIViewController{
    
    func hideKeyboardWhenTapAround(){
        let tap = UITapGestureRecognizer(target: self, action: #selector(dismissKeyboard))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }
    
    @objc func dismissKeyboard(){
        view.endEditing(true)
    }
}
