//
//  RoundedImage.swift
//  my-hood
//
//  Created by Amadeu Andrade on 23/05/16.
//  Copyright © 2016 Amadeu Andrade. All rights reserved.
//

import UIKit

class RoundedImage: UIImageView {

    override func awakeFromNib() {
        self.layer.cornerRadius = self.frame.size.width / 2
        self.clipsToBounds = true
    }
    
}
