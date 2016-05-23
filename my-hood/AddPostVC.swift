//
//  AddPostVC.swift
//  my-hood
//
//  Created by Amadeu Andrade on 22/05/16.
//  Copyright © 2016 Amadeu Andrade. All rights reserved.
//

import UIKit

class AddPostVC: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    @IBOutlet weak var addPicBtn: UIButton!
    @IBOutlet weak var postImg: RoundedImage!
    @IBOutlet weak var descriptionField: UITextField!
    @IBOutlet weak var titleField: UITextField!
    
    var imagePicker: UIImagePickerController!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imagePicker = UIImagePickerController()
        imagePicker.delegate = self
    }

    @IBAction func onMakePostBtnPressed(sender: AnyObject) {
        
    }
    
    @IBAction func onAddPicBtnPressed(sender: AnyObject) {
        if UIImagePickerController.isSourceTypeAvailable(.PhotoLibrary) {
            //imagePicker = UIImagePickerController()
            //imagePicker.delegate = self
            imagePicker.sourceType = .PhotoLibrary
            imagePicker.allowsEditing = false
            if let availableMediaTypes = UIImagePickerController.availableMediaTypesForSourceType(.PhotoLibrary) {
                imagePicker.mediaTypes = availableMediaTypes
            }
            presentViewController(imagePicker, animated: true, completion: nil)
        }
    }
    
    @IBAction func onCancelBtnPressed(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    func imagePickerController(picker: UIImagePickerController, didFinishPickingImage image: UIImage, editingInfo: [String : AnyObject]?) {
        imagePicker.dismissViewControllerAnimated(true, completion: nil)
        postImg.image = image
        addPicBtn.hidden = true
    }

}
