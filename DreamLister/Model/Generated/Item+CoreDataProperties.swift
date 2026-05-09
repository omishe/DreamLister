//
//  Item+CoreDataProperties.swift
//  DreamLister
//
//  Created by Omishe Hernandez on 08/05/26.
//
//

public import Foundation
public import CoreData


public typealias ItemCoreDataPropertiesSet = NSSet

extension Item {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Item> {
        return NSFetchRequest<Item>(entityName: "Item")
    }

    @NSManaged public var created: Date?
    @NSManaged public var details: String?
    @NSManaged public var title: String?
    @NSManaged public var price: Double
    @NSManaged public var toImage: Image?
    @NSManaged public var toItemType: ItemType?
    @NSManaged public var toStore: Store?

}

extension Item : Identifiable {

}
