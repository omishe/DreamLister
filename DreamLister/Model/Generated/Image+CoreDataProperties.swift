//
//  Image+CoreDataProperties.swift
//  DreamLister
//
//  Created by Omishe Hernandez on 08/05/26.
//
//

public import Foundation
public import CoreData


public typealias ImageCoreDataPropertiesSet = NSSet

extension Image {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Image> {
        return NSFetchRequest<Image>(entityName: "Image")
    }

    @NSManaged public var image: NSObject?
    @NSManaged public var toItem: Item?
    @NSManaged public var toStore: NSSet?

}

// MARK: Generated accessors for toStore
extension Image {

    @objc(addToStoreObject:)
    @NSManaged public func addToToStore(_ value: Store)

    @objc(removeToStoreObject:)
    @NSManaged public func removeFromToStore(_ value: Store)

    @objc(addToStore:)
    @NSManaged public func addToToStore(_ values: NSSet)

    @objc(removeToStore:)
    @NSManaged public func removeFromToStore(_ values: NSSet)

}

extension Image : Identifiable {

}
