//
//  ViewController.swift
//  project-5-puzzle
//
//  Created by michele saladino on 28/12/2019.
//  Copyright © 2019 michele saladino. All rights reserved.
//

import UIKit
import Photos


class ViewController: UIViewController {
    
    
    @IBOutlet weak var creationFrame: UIView!
    
    @IBOutlet weak var creationimageView: UIImageView!
    
    @IBOutlet weak var startOverButton: UIButton!
    
    @IBOutlet weak var colorLabel: UILabel!
    
    @IBOutlet weak var colorsContainer: UIView!
    
    @IBOutlet weak var shareButton: UIButton!
    
    var creation = Creation.init()
    
    @IBAction func startOver(_ sender: Any) {
        print("Starting over")
    }
    
    @IBAction func applyColor(_ sender: UIButton) {
        print("Applying color")
    }
    
    @IBAction func share(_ sender: Any) {
        //print("Sharing")
        displayImagePickingOptions()
    }
    
    func displayImagePickingOptions(){
        print("Displaying Image Picking Options")
        let alertController = UIAlertController(title: "Choose image", message:
            nil, preferredStyle: .actionSheet)
        
        
        let cameraAction = UIAlertAction(title: "Take photo", style: .default) { (action) in
            self.present(cameraAction)
        }
        
        // add camera action to alert controller
        alertController.addAction(cameraAction)
        
        // create library action
        let libraryAction = UIAlertAction(title: "Library pick", style: .default) { (action) in
            self.displayLibrary()
        }
        
        // add library action to alert controller
        alertController.addAction(libraryAction)
        
        // create random action
        let randomAction = UIAlertAction(title: "Random", style: .default) { (action) in
            self.pickRandom()
        }
        
        // add random action to alert controller
        alertController.addAction(randomAction)
        
        // create cancel action
        let canceclAction = UIAlertAction(title: "Cancel", style: .cancel) { (action) in
            print("Cancellation image picking - doing nothing in fact:")
        }
        
        // add cancel action to alert controller
        alertController.addAction(canceclAction)
        
        present(alertController, animated: true) {
            // code to execute after the controller finished presenting
        }
        
    }
    
    func displayCamera() {
        print("Launching device camera")
    }
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated
    }
    
    
    
}

