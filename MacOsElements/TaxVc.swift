//
//  TaxVc.swift
//  MacOsElements
//
//  Created by KevinT on 2018-05-07.
//  Copyright © 2018 Mammoth Interactive. All rights reserved.
//

import Cocoa

var subTotalAmount: NSNumber = 0.00
var totalAfterTax: NSNumber = 0.00
let formatter = NumberFormatter()

class TaxVc: NSViewController {

    @IBOutlet weak var textFieldSubTotalAmount: NSTextField!
  
    @IBOutlet weak var sliderTaxPercentage: NSSlider!
  
    @IBOutlet weak var labelTaxPercentage: NSTextField!
  
    @IBOutlet weak var labelTaxAmount: NSTextField!
  
    @IBOutlet weak var labelTotalAfterTaxAmount: NSTextField!
  
  
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
      
      textFieldSubTotalAmount.alignment = .right
      textFieldSubTotalAmount.floatValue = 0.00
      labelTaxAmount.alignment = .right
      labelTaxAmount.stringValue = "$" + String(format: "%.2f", 0.00)

      labelTotalAfterTaxAmount.alignment = .right
      labelTotalAfterTaxAmount.stringValue = "$" + String(format: "%.2f", 0.00)

    }
  
  @IBAction func calculateButtonClicked(_ sender: NSButton) {
    subTotalAmount = textFieldSubTotalAmount.floatValue as NSNumber
    
    let floatSubTotalAmount = textFieldSubTotalAmount.floatValue // need error handling
    
    let intTaxPercentage = sliderTaxPercentage.intValue
    let floatTaxAmount = floatSubTotalAmount * Float(intTaxPercentage) / 100
    let numberTaxAmount = floatTaxAmount as NSNumber  // to be formatted in currency

    formatter.numberStyle = NumberFormatter.Style.currency

    labelTaxAmount.stringValue = formatter.string(from: numberTaxAmount)!

    let numberTotalAfterTaxAmount = (floatTaxAmount + floatSubTotalAmount ) as NSNumber  // to be formatted in currency
    totalAfterTax = numberTotalAfterTaxAmount
    print(numberTotalAfterTaxAmount)

    labelTotalAfterTaxAmount.stringValue = formatter.string(from: numberTotalAfterTaxAmount)!
  }
  
  @IBAction func taxPercentageSliderChanged(_ sender: NSSlider) {
    labelTaxPercentage.stringValue = String(sliderTaxPercentage.intValue) + "%"
    print(sliderTaxPercentage.intValue)
  }
}

