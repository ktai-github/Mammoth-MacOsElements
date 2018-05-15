//
//  TipVc.swift
//  MacOsElements
//
//  Created by KevinT on 2018-05-07.
//  Copyright © 2018 Mammoth Interactive. All rights reserved.
//

import Cocoa

class TipVc: NSViewController {
  
  @IBOutlet weak var labelSubTotalAmount: NSTextField!
  
  @IBOutlet weak var labelTotalAfterTaxAmount: NSTextField!
  
  @IBOutlet weak var sliderTipPercentage: NSSlider!
  
  @IBOutlet weak var labelTipPercentage: NSTextField!
  
  @IBOutlet weak var labelTipAmount: NSTextField!
  
  @IBOutlet weak var labelTotalAmount: NSTextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
      
      labelSubTotalAmount.alignment = .right
      labelTotalAfterTaxAmount.alignment = .right
      labelTipAmount.alignment = .right
      labelTipAmount.floatValue = 0.00
      labelTotalAmount.alignment = .right
      labelTotalAmount.floatValue = 0.00
      
    }
  
  //changed from viewDidAppear to viewWillAppear
  override func viewWillAppear() {
    
    labelSubTotalAmount.stringValue = formatter.string(from: subTotalAmount)!
    labelTotalAfterTaxAmount.stringValue = formatter.string(from: totalAfterTax)!

  }
  
  @IBAction func calculateButtonClicked(_ sender: NSButton) {
    let intTipPercentage = sliderTipPercentage.intValue
    let floatTipAmount = subTotalAmount.floatValue * Float(intTipPercentage) / 100
    let numberTipAmount = floatTipAmount as NSNumber  // to be formatted in currency
    
    
    
    labelTipAmount.stringValue = formatter.string(from: numberTipAmount)!
    
    let numberTotalAmount = (floatTipAmount + totalAfterTax.floatValue ) as NSNumber  // to be formatted in currency
    
    labelTotalAmount.stringValue = formatter.string(from: numberTotalAmount)!
  }
  
  @IBAction func tipPercentageSliderChanged(_ sender: NSSlider) {
    labelTipPercentage.stringValue = String(sliderTipPercentage.intValue) + "%"
    print(sliderTipPercentage.intValue)
  }
}
