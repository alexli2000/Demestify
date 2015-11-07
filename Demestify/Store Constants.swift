//
//  Store Constants.swift
//  Demestify
//
//  Created by Alexander Li on 2015-11-07.
//  Copyright © 2015 Alexander Li. All rights reserved.
//

import UIKit


struct Food {
    var cost:Int!
    var health:CGFloat!
    
    init(foodType:FoodTypes) {
        switch foodType {
        case .Sushi:
            cost = 20
            health = 0.2
            
        default:
            break
        }
    }
    
}

struct Clothing {
    var cost:Int!
    var bodyPosition:BodyPosition!
    
    init(clothingType:ClothingTypes) {
        switch clothingType {
        case .Scarf:
            cost = 20
            bodyPosition = .Head
            
            
        default:
            break
        }
    }
}

enum FoodTypes {
    case Sushi, Corn, Chicken, Pizza, Fries, Bread, Cotton_Candy, Sandwich, Hamburger, Spaghetti, Milkshake, Coffee
}

enum ClothingTypes {
    case Scarf, HairTie, Fedora, EarMuffs, Toque, Shirt, Skirt, Blouse, Dress, Cape, TankTop
}

enum BodyPosition {
    case Head, Torso
}