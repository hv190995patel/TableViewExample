//
//  InterfaceController.swift
//  TableViewExample WatchKit Extension
//
//  Created by Hiten Patel on 2019-02-27.
//  Copyright © 2019 MAD. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    //MARK: outlet
    @IBOutlet weak var countryTable: WKInterfaceTable!
    
    
    //1. setup the data source
    //-> array
    
    //MARK: Data source
    let countriesList:[String] = ["India","USA","CANADA","Brazil","Vietnam"]
    //2. attach data to row in table
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
    }
    
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
        print("Hello")
        
        //this is first function runs when watch loads
        
        //MARK: populate tableview with data
        //1 tell ios how many rows your table should have
         self.countryTable.setNumberOfRows(self.countriesList.count, withRowType: "myRow")
        
        //2 loop through the array
        //3 take each item in array and put it in a table row
        for (i,country) in self.countriesList.enumerated() {
            let row = self.countryTable.rowController(at: i) as! CountryRowController
            row.countryNameLabel.setText(country)
        }
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
