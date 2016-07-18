//
//  InterfaceController.swift
//  aw_imc WatchKit Extension
//
//  Created by José-María Súnico on 20160718.
//  Copyright © 2016 José-María Súnico. All rights reserved.
//

import WatchKit
import Foundation

class sharedValues : NSObject{
	var imc: Float
	init (imc: Float){
		self.imc = imc
	}
}

class InterfaceController: WKInterfaceController {
	var weight: Float = 0.0
	var height: Float = 0.0
	
	@IBOutlet var heightValue: WKInterfaceLabel!
	@IBOutlet var weightValue: WKInterfaceLabel!
	
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

	@IBAction func weightSlider(value: Float) {
		self.weight = value
		self.weightValue.setText(String(self.weight))
	}
	@IBAction func heightSlider(value: Float) {
		self.height = value/100
		self.heightValue.setText(String(self.height))
	}
	@IBOutlet var obtainIMC: WKInterfaceButton!
	@IBAction func obtainIMCButton() {
		let imc = self.weight/(self.height*self.height)
		let myContext = sharedValues(imc: imc)
		pushControllerWithName("ResultsController", context: myContext)
	}
	
}
