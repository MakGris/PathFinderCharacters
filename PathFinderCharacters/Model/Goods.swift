//
//  Goods.swift
//  PathFinderCharacters
//
//  Created by Maksim Grischenko on 17.01.2023.
//

import Foundation

struct Goods {
    let weapons: [Weapon]
}

struct Weapon {
    let name: String
    let distance: String
    let price: String
    let type: String
    let damage: String
    let criticalDamage: String
    let description: String
    let picture: String
    let special: Bool
}
