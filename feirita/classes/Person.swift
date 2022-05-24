//
//  Person.swift
//  feirita
//
//  Created by Bof on 19/05/22.
//

import Foundation
import UIKit

class Person {
    let img: String!
    let name: String!
    let num: String!
    let zona: String!
    
    init(_ img: String, _ name: String, _ num: String, _ zona: String) {
        self.img = img
        self.name = name
        self.num = num
        self.zona = zona
    }
}
