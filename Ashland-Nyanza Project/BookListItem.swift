//
//  BookListItem.swift
//  Ashland-Nyanza Project
//
//  Created by Lorraine Fryer on 10/16/15.
//  Copyright © 2015 Lorraine Fryer. All rights reserved.
//

import UIKit

class BookListItem: NSObject {

    var text: String
    
    var photo: UIImage?
    
    var url: String
    
    
    init(text: String, photo: UIImage?, url: String) {
        self.text = text
        self.photo = photo
        self.url = url
}
}