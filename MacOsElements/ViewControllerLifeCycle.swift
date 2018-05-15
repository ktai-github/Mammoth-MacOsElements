//
//  ViewControllerLifeCycle.swift
//  MacOsElements
//
//  Created by KevinT on 2018-05-14.
//  Copyright © 2018 Mammoth Interactive. All rights reserved.
//

import Cocoa

class ViewControllerLifeCycle: NSViewController {

//  code that only needs to be run once at the beginning
//  Called after the view controller's view has been loaded into memory (not yet appeared)
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
      
      print("View life cycle functions are called in the following order (for a blank view controller):")
      
      print("1. viewDidLoad executed")
    }
  
//  override func updateViewConstraints() {
//
//  }
  
//  view controller's view has a layout method that gets called automatically
//  code that needs to be called before the layout method of a view controller's view is called
  override func viewWillLayout() {
    print("2. viewWillLayout executed")
  }
  
//  code that needs to be called after the layout method of a view controller's view is called
  override func viewDidLayout() {
    print("3. viewDidLayout executed")
  }
  
//  code that needs to be called every time the objects in the view controller is about to appear on screen
  override func viewWillAppear() {
    print("4. viewWillAppear executed")
  }
  
//  code that needs to be called every time the view already did appear on screen
  override func viewDidAppear() {
    print("5. viewDidAppear executed")
  }
  
//  code that needs to be called before the view disappears
  override func viewWillDisappear() {
    print("6. viewWillDisappear executed")
  }
  
//  code that needs to be called after the view disappears
  override func viewDidDisappear() {
    print("7. viewDidDisappear executed")
  }
}
