//
//  ViewController.swift
//  What's It Worth
//
//  Created by Josh SIlverstein on 12/22/15.
//  Copyright © 2015 Silverstein works. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    
    @IBOutlet weak var netBool: UISwitch!
    @IBOutlet weak var netImage: UIImageView!
    @IBOutlet weak var netLabel: UILabel!
    
    
    @IBOutlet weak var potleBool: UISwitch!
    @IBOutlet weak var potleLabel: UILabel!
    @IBOutlet weak var potleImage: UIImageView!
    
    
    @IBOutlet weak var mcdBool: UISwitch!
    @IBOutlet weak var mcdImage: UIImageView!
    @IBOutlet weak var mcdLabel: UILabel!
    
    @IBOutlet weak var textField: UITextField!
    
    @IBAction func submit(sender: AnyObject) {
       
    if textField.text != "" {
        mcdImage.image = UIImage(named: "starbucks")
        netImage.image = UIImage(named: "netflix-icon")
        potleImage.image = UIImage(named: "chipotlelogo")
        
        let mcdCost = 3.00
        let potleCost = 8.00
        let netCost = 12.00
        let text = textField.text!
        var number  = Double(text)!
        
        if mcdBool.on {
            let mcd = number/mcdCost
            var mcdAmount = floor(mcd)
            var mcdString = String(Int(mcdAmount))
           mcdLabel.text = "x \(mcdString) cups of Coffee"
            
        } else {
            mcdLabel.text = ""
            mcdImage.image = nil
            
        }
     
        if potleBool.on {
            let potle = number/potleCost
            var potleAmount = floor(potle)
            var potleString = String(Int(potleAmount))
            potleLabel.text = "x \(potleString) Burritos"
            
        } else {
            potleLabel.text = ""
            potleImage.image = nil
            
        }
        
        if netBool.on {
            let net = number/netCost
            var netAmount = floor(net)
            var netString = String(Int(netAmount))
            netLabel.text = "x \(netString) Months Subscription"
            
        } else {
            netLabel.text = ""
            netImage.image = nil
        }
        textField.text = ""
        } else {
            textField.text = ""
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

