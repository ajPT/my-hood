//
//  PostCell.swift
//  my-hood
//
//  Created by Amadeu Andrade on 22/05/16.
//  Copyright © 2016 Amadeu Andrade. All rights reserved.
//

import UIKit

class PostCell: UITableViewCell {
    
    @IBOutlet weak var postImage: RoundedImage!
    @IBOutlet weak var postTitle: UILabel!
    @IBOutlet weak var postDescription: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func configureCell(post: Post) {
        postTitle.text = post.title
        postDescription.text = post.desc
    }

    
}
