//
//  ViewController.swift
//  Assignment 1
//
//  Created by Ke on 9/28/15.
//  Copyright © 2015 Ke. All rights reserved.
//
// i am modifying it in github...
// Okay, now i am trying to screw it up. asdjfajdfla;sdjfla;djf

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textSecretMessage: UILabel!
    @IBOutlet weak var TextUserName: UITextField!
    @IBOutlet weak var TextPassword: UITextField!
    
    @IBOutlet weak var SecretStored: UITextField!
    @IBOutlet weak var Secret: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.lightGrayColor()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func revealButtonPressed(sender: UIButton) {
        
        let usernameEntered = TextUserName.text
        let passwordEntered = TextPassword.text
        if (usernameEntered == "username" && passwordEntered == "password"){
            textSecretMessage.textColor = UIColor.blackColor()
            textSecretMessage.text = "You reveal the secret message!"
            UIView.animateWithDuration(1.5, animations: {
                self.Secret.alpha = 1
            })
        }else{
            Secret.alpha = 0
            textSecretMessage.text = "Something is wrong!"
            textSecretMessage.textColor = UIColor.redColor()
        }
    
    }

    @IBAction func ExitUsername(sender: UITextField) {
        resignFirstResponder()
    }
    
    @IBAction func ExitPassword(sender: UITextField) {
        resignFirstResponder()
    }
    
    @IBAction func ExitSecret(sender: UITextField) {
        resignFirstResponder()
    }
    
    @IBAction func HideButtonPressed(sender: AnyObject) {
        if (Secret.alpha == 0){
            textSecretMessage.text = "You have no secret message to hide..."
            textSecretMessage.textColor = UIColor.blackColor()
        }else{
            UIView.animateWithDuration(1.5, animations: {
                self.Secret.alpha = 0
            })
        }
    }
    @IBAction func StoreButtonPressed(sender: UIButton) {
        Secret.alpha = 0
        Secret.text = SecretStored.text
        SecretStored.text = ""
        
    }
}

