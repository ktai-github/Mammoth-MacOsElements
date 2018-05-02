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
  
    override func viewDidLoad() {
        super.viewDidLoad()
      myMenu.removeAllItems()
      myMenu.addItems(withTitles: ["macOS", "iOS", "tvOS", "watchOS"])
      myHorizontalSlider.allowsTickMarkValuesOnly = true
      myHorizontalSlider.maxValue = 10.0
      myHorizontalSlider.minValue = 1.0
      myHorizontalSlider.numberOfTickMarks = 10
      myHorizontalSlider.floatValue = 8.0
      
      vSliderValue.stringValue = "Vertical slider at: " +  String(format: "%.1f", myVerticalSlider.floatValue)
        // Do view setup here.

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
  
  
}
