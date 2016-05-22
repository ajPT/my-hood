//
//  AddPostVC.swift
//  my-hood
//
//  Created by Amadeu Andrade on 22/05/16.
//  Copyright © 2016 Amadeu Andrade. All rights reserved.
//

import UIKit

class AddPostVC: UIViewController {
    
    @IBOutlet weak var postImg: UIImageView!
    @IBOutlet weak var descriptionField: UITextField!
    @IBOutlet weak var titleField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        postImg.layer.cornerRadius = postImg.frame.size.width / 2
        postImg.clipsToBounds = true
    }

    @IBAction func onMakePostBtnPressed(sender: AnyObject) {
        
    }
    
    @IBAction func onAddPicBtnPressed(sender: AnyObject) {
        sender.setTitle("", forState: .Normal)
    
    }
    
    @IBAction func onCancelBtnPressed(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
    }

}
