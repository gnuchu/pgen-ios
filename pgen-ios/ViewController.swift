//
//  ViewController.swift
//  pgen-ios
//
//  Created by John Griffiths on 30/08/2015.
//  Copyright (c) 2015 John Griffiths. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  @IBOutlet var uppercaseSlider : UISlider!
  @IBOutlet var lowercaseSlider : UISlider!
  @IBOutlet var numbersSlider : UISlider!
  @IBOutlet var symbolsSlider : UISlider!
  
  @IBOutlet var uppercaseLabel : UILabel!
  @IBOutlet var lowercaseLabel : UILabel!
  @IBOutlet var numbersLabel : UILabel!
  @IBOutlet var symbolsLabel : UILabel!
  
  @IBOutlet var passwordField : UILabel!

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    
    uppercaseSlider.continuous = false
    lowercaseSlider.continuous = false
    numbersSlider.continuous = false
    symbolsSlider.continuous = false
    
    passwordField.text = "Blah"
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }

}

extension ViewController {
  @IBAction func refreshPassword (sender: UIButton) {
    
  }
  
  @IBAction func copyPassword (sender: UIButton) {
    
  }
  
  @IBAction func resetPasswordInView (sender: AnyObject) {
    uppercaseLabel.text = NSString(format: "%0f", uppercaseSlider.value) as String
    lowercaseLabel.text = NSString(format: "%0f", lowercaseSlider.value) as String
    numbersLabel.text = NSString(format: "%0f", numbersSlider.value) as String
    symbolsLabel.text = NSString(format: "%0f", symbolsSlider.value) as String
  }
}

