//
//  AlaLabel.swift
//  AlamofireCustom
//
//  Created by Quy on 1/11/17.
//  Copyright © 2017 Quy. All rights reserved.
//

import UIKit

class AlaLabel: UILabel {
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        guard  (self.text != nil) else {
            return
        }
        self.text = self.text?.localized
    }

}
