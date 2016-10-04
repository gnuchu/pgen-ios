//
//  ViewController.swift
//  pgen-ios
//
//  Created by John Griffiths on 30/08/2015.
//  Copyright (c) 2015 John Griffiths. All rights reserved.
//

import UIKit
import QuartzCore


class ViewController: UIViewController {
  
  let password = PasswordGenerator()
  
  @IBOutlet var uppercaseSlider : UISlider!
  @IBOutlet var lowercaseSlider : UISlider!
  @IBOutlet var numbersSlider : UISlider!
  @IBOutlet var symbolsSlider : UISlider!
  
  @IBOutlet var uppercaseLabel : UILabel!
  @IBOutlet var lowercaseLabel : UILabel!
  @IBOutlet var numbersLabel : UILabel!
  @IBOutlet var symbolsLabel : UILabel!
  
  @IBOutlet var numCallsLabel : UILabel!
  
  @IBOutlet var passwordField : UILabel!
  
  var numberCalls : Int = 0
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    
    uppercaseSlider.isContinuous = false
    lowercaseSlider.isContinuous = false
    numbersSlider.isContinuous = false
    symbolsSlider.isContinuous = false
    
    self.resetPasswordInView(sender: self)
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  
//  override func shouldAutorotate() -> Bool {
//    return false
//  }
  
}

extension ViewController {
  @IBAction func refreshPassword (sender: UIButton) {
    self.resetPasswordInView(sender: self)
  }
  
  @IBAction func copyPassword (sender: UIButton) {
    UIPasteboard.general.string = passwordField.text
  }
  
  @IBAction func resetPasswordInView (sender: AnyObject) {
    
    numberCalls+=1
    
    password.lowercase = Int(lowercaseSlider.value)
    password.uppercase = Int(uppercaseSlider.value)
    password.numbers = Int(numbersSlider.value)
    password.symbols = Int(symbolsSlider.value)
    
    uppercaseLabel.text = NSString(format: "%d", Int(uppercaseSlider.value)) as String
    lowercaseLabel.text = NSString(format: "%d", Int(lowercaseSlider.value)) as String
    numbersLabel.text = NSString(format: "%d", Int(numbersSlider.value)) as String
    symbolsLabel.text = NSString(format: "%d", Int(symbolsSlider.value)) as String
    
    passwordField.text = password.generate()
    
    numCallsLabel.text = numberCalls.description
    
  }
}

