//
//  AlamofireTableViewCell.swift
//  AlamofireCustom
//
//  Created by Quy on 1/11/17.
//  Copyright © 2017 Quy. All rights reserved.
//

import UIKit

class AlamofireTableViewCell: UITableViewCell {

    @IBOutlet weak var heeloText: AlaLabel!
    override func awakeFromNib() {
        super.awakeFromNib()
//       self.heeloText.text = NSLocalizedString("Hello world", comment: "aaaaa")
    }
    override func layoutSubviews() {
        super.layoutSubviews()
        
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
