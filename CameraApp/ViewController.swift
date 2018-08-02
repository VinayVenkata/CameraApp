//
//  ViewController.swift
//  CameraApp
//
//  Created by Vinay Ponnuri on 7/22/18.
//  Copyright © 2018 Vinay Ponnuri. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    @IBOutlet weak var imageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func saveButtonClicked(_ sender: Any) {
//        let imageData = UIImageJPEGRepresentation(imageView.image!, 0.6)
//        let compressedJPGImage = UIImage(data: imageData!)
//        UIImageWriteToSavedPhotosAlbum(compressedJPGImage!, nil, nil, nil)
//        
//        var alert = UIAlertView(title: "Wow",
//                                message: "Your image has been saved to Photo Library!",
//                                delegate: nil,
//                                cancelButtonTitle: "Ok")
//        alert.show()
    }
    
    @IBAction func openCamera(_ sender: Any) {
        if UIImagePickerController.isSourceTypeAvailable(.camera) {
            let imagePicker = UIImagePickerController()
            imagePicker.delegate = self
            imagePicker.sourceType = .camera
            imagePicker.allowsEditing = false
            self.present(imagePicker, animated: true, completion: nil)
        }
        
    }
    
    @IBAction func openLibrary(_ sender: Any) {
        if UIImagePickerController.isSourceTypeAvailable(.photoLibrary) {
            let imagePicker = UIImagePickerController()
            imagePicker.delegate = self
            imagePicker.sourceType = .photoLibrary
            imagePicker.allowsEditing = true
            self.present(imagePicker, animated: true, completion: nil)
            
        }
    }
    
    private func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String: AnyObject]) {
        let image = info[UIImagePickerControllerOriginalImage] as! UIImage
        imageView.image = image
        dismiss(animated: true, completion: nil)
    }
    
    
}

