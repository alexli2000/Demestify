//
//  PetModel.swift
//  Demestify
//
//  Created by Alexander Li on 2015-11-07.
//  Copyright © 2015 Alexander Li. All rights reserved.
//

import UIKit

class PetModel: NSObject {

    var petMoney:Int?
    var petHealth:Float?
    var purchasedClothing:[Int] = []
    
    override init() {
        petMoney = NSUserDefaults.standardUserDefaults().integerForKey("petMoney")
        if petMoney == 0 {
            petMoney = 1000
        }
        petHealth = NSUserDefaults.standardUserDefaults().floatForKey("petHealth")
        if petHealth == 0.0 {
            petHealth = 0.9
        }
        
        purchasedClothing = NSUserDefaults.standardUserDefaults().objectForKey("purchasedClothing") as! [Int]
    }
    
    func saveData() {
        if petMoney != nil {
        NSUserDefaults.standardUserDefaults().setInteger(petMoney!, forKey: "petMoney")
        }
        if petHealth != nil {
        NSUserDefaults.standardUserDefaults().setFloat(petHealth!, forKey: "petHealth")
        }

        NSUserDefaults.standardUserDefaults().setObject(purchasedClothing, forKey: "purcahsedClothing")
    }
}