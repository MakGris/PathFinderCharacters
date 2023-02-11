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
    let grip: String
    let damage: String
    let criticalDamage: String
    let description: String
    let picture: String
    let special: Bool
    
    static func getWeapons() -> [Weapon] {
        let data = WeaponDataManager.shared
        var weapons = [Weapon]()
        
        let names = data.weaponsName
        let distances = data.weaponsDistance
        let prices = data.weaponsPrice
        let types = data.weaponsType
        let grips = data.weaponsGrip
        let damages = data.weaponsDamage
        let criticalDamages = data.criticalDamage
        let descriptions = data.description
        let pictures = data.weaponsImage
        let specials = data.weaponIsSpecial
        
        let iterationMinimumCount = min(names.count, distances.count, prices.count, types.count, grips.count, damages.count, criticalDamages.count, descriptions.count, pictures.count, specials.count)
        
        for index in 0..<iterationMinimumCount {
            let someWeapon = Weapon(name: names[index], distance: distances[index], price: prices[index], type: types[index], grip: grips[index], damage: damages[index], criticalDamage: criticalDamages[index], description: descriptions[index], picture: pictures[index], special: specials[index])
            weapons.append(someWeapon)
        }
        
        return weapons
    }
}

