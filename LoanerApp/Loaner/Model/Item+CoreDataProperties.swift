//
//  Item+CoreDataProperties.swift
//  loaner
//
//  Created by Nicholas Kearns on 6/17/20.
//  Copyright © 2020 LinnierGames. All rights reserved.
//
//

import Foundation
import UIKit.UIImage
import CoreData


extension Item {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Item> {
        return NSFetchRequest<Item>(entityName: "Item")
    }

    @NSManaged public var itemImage: UIImage
    @NSManaged public var itemTitle: String
    @NSManaged public var loanee: Loanee
    @NSManaged public var notes: String

    
    
    
    
    
}
