//
//  LDAppNotify.swift
//
//  Created by Lazar on 12/16/16.
//  Copyright © 2017 Lazar. All rights reserved.
//

import UIKit

/// LDAppNotify class which is used for handling sending and receiving of NSNotification instnances.
open class LDAppNotify {
    
    /// NotificationCenter.default instance
    private static var notificationCenter: NotificationCenter {
        return NotificationCenter.default
    }
    
    /// Post the specified notification with the given object.
    ///
    /// - Parameters:
    ///   - name: NSNotification name.
    ///   - object: NSNotification object. By default, object is not set.
    public static func postNotification(_ name: String, object: AnyObject? = nil) {
        notificationCenter.post(name: NSNotification.Name(rawValue: name), object: object)
    }

    /// Post the specified NSNotification with the given object.
    ///
    /// - Parameters:
    ///   - name: NSNotification name.
    ///   - object: NSNotification object. By default, object is not set.
    public static func postNotification(_ name: NSNotification.Name, object: AnyObject? = nil) {
        notificationCenter.post(name: name, object: object)
    }
    
    /// Observe the notification with the specified name.
    ///
    /// - Parameters:
    ///   - observer: Observer for NSNotification.
    ///   - selector: Selector for NSNotification.
    ///   - name: NSNotification name.
    ///   - object: NSNotification object. By default, object is not set.
    public static func observeNotification(_ observer: AnyObject, selector: Selector, name: String, object: AnyObject? = nil) {
        notificationCenter.addObserver(observer, selector: selector, name: NSNotification.Name(rawValue: name), object: object)
    }

    /// Observe the NSNotification with the specified name.
    ///
    /// - Parameters:
    ///   - observer: Observer for NSNotification.
    ///   - selector: Selector for NSNotification.
    ///   - name: NSNotification name.
    ///   - object: NSNotification object. By default, object is not set.
    public static func observeNotification(_ observer: AnyObject, selector: Selector, name: NSNotification.Name, object: AnyObject? = nil) {
        notificationCenter.addObserver(observer, selector: selector, name: name, object: object)
    }
    
    /// Remove the object from the observers
    public static func removeObserver(_ object: AnyObject) {
        notificationCenter.removeObserver(object)
    }
}
