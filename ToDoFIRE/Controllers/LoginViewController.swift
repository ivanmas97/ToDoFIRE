//
//  ViewController.swift
//  ToDoFIRE
//
//  Created by Ivan Maslov on 28.06.2023.
//

import UIKit

class LoginViewController: UIViewController {
    
    // Outlets
    @IBOutlet weak var warningLabel: UILabel!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordFextField: UITextField!
    
    // Keyboard default settings
    var keyboardAdjusted = false
    var lastKeyboardOffset: CGFloat = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        warningLabel.isHidden = true
        registerKeyboardNotifications()
        
    }
    
    @IBAction func loginTapped(_ sender: UIButton) {
        removeKeyboardNotifications()
    }
    
    @IBAction func registerTapped(_ sender: UIButton) {
        removeKeyboardNotifications()
    }
}

