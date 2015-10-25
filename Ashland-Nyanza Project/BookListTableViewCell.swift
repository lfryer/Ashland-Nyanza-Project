//
//  BookListTableViewCell.swift
//  Ashland-Nyanza Project
//
//  Created by Lorraine Fryer on 10/15/15.
//  Copyright © 2015 Lorraine Fryer. All rights reserved.
//

import UIKit

class BookListTableViewCell: UITableViewCell {

    @IBOutlet weak var bookLabel: UILabel!
    @IBOutlet weak var bookCover: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
