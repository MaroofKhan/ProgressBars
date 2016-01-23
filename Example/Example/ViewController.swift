//
//  ViewController.swift
//  Example
//
//  Created by Maroof Khan on 23/01/2016.
//  Copyright © 2016 Maroof Khan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var progressbar: HorizontalProgressView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    override func viewDidAppear(animated: Bool) {
        progressbar.value = 60
    }

}

