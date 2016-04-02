//
//  ViewController.swift
//  HelloSwiftMobileWorld2
//
//  Created by George on 02.04.16.
//  Copyright © 2016 George. All rights reserved.
//

import UIKit

//AutoLayout
class ViewController: UIViewController {

    @IBOutlet weak var greetingLabel: UILabel!
   
    @IBOutlet weak var inputField: UITextField!
    
    @IBAction func buttonPressed(sender: AnyObject) {
        let userName = inputField.text ?? "Anonimus"
        let greeting = userName + " Hello and welcome to the world of mobile apps!"
        greetingLabel.text = greeting
        
    }
 
    override func viewDidLoad() {
        super.viewDidLoad()
        
        inputField.delegate = self
    }

}

extension ViewController:UITextFieldDelegate {
    
    //когда пользователь нажимает на ввод на устройстве с клавиатуры вызывается этот метод
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        // По сути это позволяет скрыть клавиатуру
        textField.resignFirstResponder()
        return true
    }
    func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool {
        
        var appliedString = (textField.text as? NSString)?.stringByReplacingCharactersInRange(range, withString: string)
        
        let elementsToConvert = ["1":"One",
                                 "2":"Two",
                                 "3":"Three",
                                 "4":"Four",
                                 "5":"Five",
                                 "6":"Six",
                                 "7":"Seven",
                                 "8":"Eight",
                                 "9":"Nine"]
        
        for (digit,letters) in elementsToConvert{
            appliedString = appliedString?.stringByReplacingOccurrencesOfString(digit
                , withString: letters)
        }
        textField.text = appliedString
        
        return false
    }
    
}






