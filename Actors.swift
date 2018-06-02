//
//  books.swift
//  tableView
//
//  Created by epita on 29/03/2018.
//  Copyright © 2018 epita. All rights reserved.
//

import Foundation
class Actors {
    var name : String?
    var charname : String?
    var house : String?
    var description : String?
    var img : String?
    
    init(
        name : String,
        charname : String,
        house : String,
        description : String,
        img : String
        )
    {
        self.name = name
        self.charname = charname
        self.house = house
        self.description = description
        self.img = img
    }
}
