//
//  Post.swift
//  my-hood
//
//  Created by Amadeu Andrade on 22/05/16.
//  Copyright © 2016 Amadeu Andrade. All rights reserved.
//

import Foundation

class Post: NSObject, NSCoding {

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
    
    override init() {
    
    }
    
    required convenience init? (coder aDecoder: NSCoder) {
        self.init()
        self._imagePath = aDecoder.decodeObjectForKey("imagePath") as? String
        self._title = aDecoder.decodeObjectForKey("title") as? String
        self._desc = aDecoder.decodeObjectForKey("description") as? String
    }
    
    func encodeWithCoder(aCoder: NSCoder) {
        aCoder.encodeObject(self._imagePath, forKey: "imagePath")
        aCoder.encodeObject(self._title, forKey: "title")
        aCoder.encodeObject(self._desc, forKey: "description")
    }

}