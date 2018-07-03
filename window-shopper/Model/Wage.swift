//
//  Wage.swift
//  window-shopper
//
//  Created by Raul Ernesto Villarreal Sigala on 7/3/18.
//  Copyright © 2018 Raul Ernesto Villarreal Sigala. All rights reserved.
//

import Foundation

class Wage {
    class func getHours(forWage wage: Double, andPrice price: Double) -> Int {
        return Int(ceil(price / wage))
    }
}
