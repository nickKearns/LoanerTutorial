//
//  ItemStore.swift
//  loaner
//
//  Created by Nicholas Kearns on 6/17/20.
//  Copyright © 2020 LinnierGames. All rights reserved.
//

import UIKit
import CoreData

class ItemStore: NSObject {

    
    let persistentContainer: NSPersistentContainer = {
        // creates the NSPersistentContainer object
        // must be given the name of the Core Data model file “LoanedItems”
        let container = NSPersistentContainer(name: "LoanedItems")
        
        // load the saved database if it exists, creates it if it does not, and returns an error under failure conditions

        container.loadPersistentStores { (description, error) in
            if let error = error {
                print("Error setting up core data (\(error)).")
            }
            
        }
        return container
    }()
    
    
    
}
