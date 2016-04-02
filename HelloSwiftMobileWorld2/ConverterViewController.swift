//
//  ConverterViewController.swift
//  HelloSwiftMobileWorld2
//
//  Created by George on 02.04.16.
//  Copyright © 2016 George. All rights reserved.
//

import UIKit

class ConverterViewController: UIViewController {

    let rubToUsdMultiplier = 1 / 67.67
    let usdToRubMultiplier = 63.0
    
    

    @IBOutlet weak var rubInput: UITextField!


    @IBOutlet weak var dolInput: UITextField!


    @IBAction func rubToUsdPressed(sender: AnyObject) {
        convertToUsd()
    }

    @IBAction func usdToRub(sender: AnyObject) {
        convertUsdToRub()
    }

    func convertToUsd(){
        guard let rubs = Double(rubInput.text!) else {
            return
        }
        let result = String(rubs * rubToUsdMultiplier)
        dolInput.text = result
    }

    func convertUsdToRub(){
        guard let usd = Double(dolInput.text!) else {
            return
        }
        let result = String(usd * usdToRubMultiplier)
        rubInput.text = result
    }


}
