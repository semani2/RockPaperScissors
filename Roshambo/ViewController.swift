//
//  ViewController.swift
//  Roshambo
//
//  Created by Sai Emani on 11/16/18.
//  Copyright © 2018 Sai Emani. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var rockButton: UIButton!
    @IBOutlet var paperButton: UIButton!
    @IBOutlet var scissorButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func play(_ sender: UIButton) {
        print(sender.tag)
        let controller: ResultController
        
        controller = self.storyboard?.instantiateViewController(withIdentifier: "ResultController") as! ResultController
        controller.selected = sender.tag
        
        present(controller, animated: true, completion: nil)
    }
}
