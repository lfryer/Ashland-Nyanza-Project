//
//  ChemicalsListItem.swift
//  Ashland-Nyanza Project
//
//  Created by Lorraine Fryer on 9/8/15.
//  Copyright (c) 2015 Lorraine Fryer. All rights reserved.
//

import UIKit

class ChemicalsListItem: NSObject {
    // A text description of this item.
    var text: String
    
    var photo: UIImage?
    
    var descrip: String
    
    
    // Returns a ToDoItem initialized with the given text and default completed value.
    init(text: String, photo: UIImage?, descrip: String) {
        self.text = text
        self.photo = photo
        self.descrip = descrip
    }
    
}