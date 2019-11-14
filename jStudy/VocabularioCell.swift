//
//  VocabularioCell.swift
//  jStudy
//
//  Created by Yoana Ugarte on 14/11/2019.
//  Copyright © 2019 Yoana Ugarte. All rights reserved.
//

import UIKit

class VocabularioCell: UITableViewCell {

    @IBOutlet weak var spanishLBL: UILabel!
    
    @IBOutlet weak var japaneseLBL: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
