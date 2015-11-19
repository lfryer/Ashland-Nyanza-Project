//
//  InterviewVideo.swift
//  Ashland-Nyanza Project
//
//  Created by Lorraine Fryer on 11/10/15.
//  Copyright © 2015 Lorraine Fryer. All rights reserved.
//

import UIKit

class InterviewVideo: NSObject {

    var text: String
    
    var descrip: String
    
    var photo: UIImage?
    
    var url: String
    
    
    init(text: String, descrip: String, photo: UIImage?, url: String) {
        self.text = text
        self.descrip = descrip
        self.photo = photo
        self.url = url
    }
    
}
