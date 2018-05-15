//
//  Vc2.swift
//  MacOsElements
//
//  Created by KevinT on 2018-04-30.
//  Copyright © 2018 Mammoth Interactive. All rights reserved.
//

import Cocoa

class Vc2: NSViewController {
  @IBOutlet weak var myTextField: NSTextField!
  
  @IBOutlet weak var myMenu: NSPopUpButton!
  
  @IBOutlet weak var myHorizontalSlider: NSSlider!
  
  @IBOutlet weak var myVerticalSlider: NSSlider!
  
  @IBOutlet weak var vSliderValue: NSTextField!
  
  @IBOutlet weak var textFieldBillAmount: NSTextField!
  
  @IBOutlet weak var sliderTipPercentage: NSSlider!
  
  @IBOutlet weak var labelTipPercentage: NSTextField!
  
  @IBOutlet weak var labelTipAmount: NSTextField!
  
  @IBOutlet weak var labelTotalAmount: NSTextField!
  
  override func viewWillAppear() {
    print("viewWillAppear executed")
  }
  
  override func viewDidAppear() {
    print("viewDidAppear executed")

  }
  
  override func viewWillDisappear() {
    print("viewWillDisappear executed")

  }
  
  override func viewDidDisappear() {
    print("viewDidDisappear executed")

  }
  
//  override func updateViewConstraints() {
//    print("updateViewConstraints executed")
//
//  }
  
  override func viewWillLayout() {
    print("viewWillLayout executed")

  }
  
  override func viewDidLayout() {
    print("viewDidLayout executed")

  }

  override func viewDidLoad() {
        super.viewDidLoad()
      
      print("videwDidLoad executed")
      
      myMenu.removeAllItems()
      myMenu.addItems(withTitles: ["macOS", "iOS", "tvOS", "watchOS"])
      myHorizontalSlider.allowsTickMarkValuesOnly = true
      myHorizontalSlider.maxValue = 10.0
      myHorizontalSlider.minValue = 1.0
      myHorizontalSlider.numberOfTickMarks = 10
      myHorizontalSlider.floatValue = 8.0
      
      vSliderValue.stringValue = "Vertical slider at: " +  String(format: "%.1f", myVerticalSlider.floatValue)
        // Do view setup here.
      
      textFieldBillAmount.alignment = .right
      textFieldBillAmount.floatValue = 0.00
      labelTipAmount.alignment = .right
      labelTipAmount.floatValue = 0.00
      labelTotalAmount.alignment = .right
      labelTotalAmount.floatValue = 0.00
    
  }
  @IBAction func actionButtonClicked(_ sender: NSButton) {
//    myTextField.isHidden = false
//    myTextField.isEnabled = true
    
//    myTextField.placeholderString = "Please enter text..."
//    myTextField.backgroundColor = NSColor.selectedControlColor
//    myTextField.textColor = NSColor.green
    
//    myTextField.usesSingleLineMode = false
//    myTextField.lineBreakMode = .byCharWrapping
//    myTextField.stringValue = "0"
//    myTextField.maximumNumberOfLines = 0
    
    var myValue = 0
    myValue = Int(myTextField.stringValue)!
    myValue += 1

    myTextField.stringValue = String(myValue)
    print(myMenu.titleOfSelectedItem!)
    print(myHorizontalSlider.floatValue)
  }

  @IBAction func myVerticalSliderClicked(_ sender: NSSlider) {
    vSliderValue.stringValue = "Vertical slider at: " +  String(format: "%.1f", myVerticalSlider.floatValue)
  }
  

//  NSString *stringBillAmount = [self.billAmountTextField text];
//  float floatBillAmount = [stringBillAmount floatValue];
//
//  NSString *stringTipPercentage = [self.tipPercentageTextField text];
//  float floatTipPercentage = [stringTipPercentage floatValue];
//
//  floatTipAmount = floatBillAmount * floatTipPercentage / 100;
//
//  NSString *stringTipAmount = [NSString stringWithFormat:@"%.2f", floatTipAmount];
//  //  NSLog(@"%@", stringTipAmount);
//  self.tipAmountLabel.text = stringTipAmount;

  @IBAction func calculateButtonClicked(_ sender: NSButton) {
    let floatBillAmount = textFieldBillAmount.floatValue  // need error handling
    let intTipPercentage = sliderTipPercentage.intValue
    let floatTipAmount = floatBillAmount * Float(intTipPercentage) / 100
    let numberTipAmount = floatTipAmount as NSNumber  // to be formatted in currency
    
    let formatter = NumberFormatter()
    formatter.locale = NSLocale.current  // current user’s chosen system locale
    formatter.numberStyle = NumberFormatter.Style.currency
    
    labelTipAmount.stringValue = formatter.string(from: numberTipAmount)!
    
    let floatTotalAmount = (floatTipAmount + floatBillAmount ) as NSNumber  // to be formatted in currency
    
    labelTotalAmount.stringValue = formatter.string(from: floatTotalAmount)!
  }
  
  @IBAction func tipPercentageSliderChanged(_ sender: NSSlider) {
    labelTipPercentage.stringValue = String(sliderTipPercentage.intValue) + "%"
    print(sliderTipPercentage.intValue)
  }
  
  
}



