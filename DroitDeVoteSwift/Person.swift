//
//  Person.swift
//  DroitDeVoteSwift
//
//  Created by lpiem on 17/10/2019.
//  Copyright © 2019 lpiem. All rights reserved.
//

import Foundation

class Person{
    var name:String
    var age:UInt8
    weak var spouse: Person?
    
    init(name:String = "Default name", age:UInt8) {
        self.name = name
        self.age = age
    }
    
    func canLegallyVote() -> Bool {
        return self.age >= 18
    }
}
