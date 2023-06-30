//
//  VCExtention.swift
//  ToDoFIRE
//
//  Created by Ivan Maslov on 30.06.2023.
//

import Foundation
import UIKit

extension UIViewController {
    
    // Add keyboard observers
    func registerKeyboardNotifications() {
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow), name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide), name: UIResponder.keyboardWillHideNotification, object: nil)
    }
    
    // Delete keyboard observers
    func removeKeyboardNotifications() {
        NotificationCenter.default.removeObserver(self, name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.removeObserver(self, name: UIResponder.keyboardWillHideNotification, object: nil)
    }
    
    // Raise view when keyboard appears method
    @objc func keyboardWillShow(notification: NSNotification) {
        // Raise content when keyboard appears
        (self.view as! UIScrollView).contentOffset = CGPoint(x: 0, y: 100)
    }

    // Lower view when keyboard hides method
    @objc func keyboardWillHide(notification: NSNotification) {
        // Lower content when keyboard hides
        (self.view as! UIScrollView).contentOffset = CGPoint.zero
    }
    
    // Keyboard size detector method
    func getKeyboardHeight(notification: NSNotification) -> CGFloat {
        let userInfo = notification.userInfo
        let keyboardSize = (userInfo![UIResponder.keyboardFrameEndUserInfoKey] as! NSValue).cgRectValue
        return keyboardSize.height
    }
}
