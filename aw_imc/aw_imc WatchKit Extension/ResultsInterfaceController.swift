//
//  ResultsControllerInterfaceController.swift
//  aw_imc
//
//  Created by José-María Súnico on 20160718.
//  Copyright © 2016 José-María Súnico. All rights reserved.
//

import WatchKit
import Foundation


class ResultsInterfaceController: WKInterfaceController {
	@IBOutlet var obtainedIMC: WKInterfaceLabel!

    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
		
		let myContext = context as! sharedValues
		obtainedIMC.setText(String(myContext.imc))
		
		
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
