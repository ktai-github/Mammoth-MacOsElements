//
//  Vc3.swift
//  MacOsElements
//
//  Created by KevinT on 2018-05-12.
//  Copyright © 2018 Mammoth Interactive. All rights reserved.
//

import Cocoa

class Vc3: NSViewController {

//  Called after the view controller’s view has been loaded into memory (not yet appeared).
    override func viewDidLoad() {
        super.viewDidLoad()
      print("View life cycle functions are called in the following order (for a blank view controller):")

      print("1. viewDidLoad executed")

        // Do view setup here.
    }
  
//  Called after the view controller’s view has been loaded into memory is about to be added to the view hierarchy in the window.
  override func viewWillAppear() {
    print("4. viewWillAppear executed")
  }
  
//  Called when the view controller’s view is fully transitioned onto the screen.
  override func viewDidAppear() {
    print("5. viewDidAppear executed")
    
  }
  
//  Called when the view controller’s view is about to be removed from the view hierarchy in the window.
  override func viewWillDisappear() {
    print("6. viewWillDisappear executed")
    
  }
  
//  Called after the view controller’s view is removed from the view hierarchy in a window.
  override func viewDidDisappear() {
    print("7. viewDidDisappear executed")
    
  }
  
  //  override func updateViewConstraints() {
  //    print("updateViewConstraints executed")
  //
  //  }
  
//  Called just before the layout() method of the view controller's view is called.
  override func viewWillLayout() {
    print("2. viewWillLayout executed")
    
  }
  
//  Called immediately after the layout() method of the view controller's view is called.
  override func viewDidLayout() {
    print("3. viewDidLayout executed")
    
  }
}
