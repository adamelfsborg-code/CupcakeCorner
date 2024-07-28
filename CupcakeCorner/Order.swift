//
//  Order.swift
//  CupcakeCorner
//
//  Created by Adam Elfsborg on 2024-07-28.
//

import Foundation

@Observable
class Order {
    static let types = ["Vanilla", "Strawberry", "Chocolate", "Rainbow"]
    
    var type = 0
    var quantity = 3
    
    var specialRequestEnabled = false {
        didSet {
            if specialRequestEnabled == false {
                extraFrosting = false
                addSprinkles = false 
            }
        }
    }
    var extraFrosting = false
    var addSprinkles = false
}
