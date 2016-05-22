//
//  Post.swift
//  my-hood
//
//  Created by Amadeu Andrade on 22/05/16.
//  Copyright © 2016 Amadeu Andrade. All rights reserved.
//

import Foundation

class Post {

    private var _imagePath: String!
    private var _title: String!
    private var _desc: String!
    
    var imagePath: String {
        return _imagePath
    }
    
    var title: String {
        return _title
    }
    
    var desc: String {
        return _desc
    }
    
    init(imagePath: String, title: String, desc: String) {
        self._imagePath = imagePath
        self._title = title
        self._desc = desc
    }

}