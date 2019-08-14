//
//  animalFunctions.swift
//  AC-iOS-Multiple-MVC
//
//  Created by Phoenix McKnight on 8/13/19.
//  Copyright © 2019 AC-iOS. All rights reserved.
//

import Foundation
struct animalFunctions {
    var mammal = [ZooAnimal]()
    var insect = [ZooAnimal]()
    var birds = [ZooAnimal]()
    var reptile = [ZooAnimal]()
   var amphibian = [ZooAnimal]()
    func numberOfSections() -> Int {
        var emptyArray = [String]()
        for animal in ZooAnimal.zooAnimals {
            emptyArray.append(animal.classification)
        }
        return Set(emptyArray).count
    }

    mutating func numberOfAnimalsInClassification() {
        for animal in ZooAnimal.zooAnimals {
            switch animal.classification {
            case "Mammal":
                mammal.append(animal)
            case "Insect":
                insect.append(animal)
            case "Reptile":
                reptile.append(animal)
            case "Bird":
                birds.append(animal)
            case "Amphibian":
                amphibian.append(animal)
            default:
                print("not an animal")
            }
        }
        
}

}
