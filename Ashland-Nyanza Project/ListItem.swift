//
//  ListItem.swift
//  Ashland-Nyanza Project
//
//  Created by Lorraine Fryer on 8/19/15.
//  Copyright (c) 2015 Lorraine Fryer. All rights reserved.
//

import UIKit

class ListItem: NSObject {
    // A text description of this item.
    var text: String
    
    var photo: UIImage?
    
    var videos: [String]?
    
    var descrip: String

    
    // Returns a ToDoItem initialized with the given text and default completed value.
    init(text: String, photo: UIImage?, videos: [String]?, descrip: String) {
        self.text = text
        self.photo = photo
        self.videos = videos
        self.descrip = descrip
    }
   
}
