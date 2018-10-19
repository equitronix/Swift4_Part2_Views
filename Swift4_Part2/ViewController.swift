//
//  ViewController.swift
//  Swift4_Part2
//
//  Created by Admin on 18/10/18.
//  Copyright © 2018 Equitronix. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet var celsiusField: UILabel!;
    @IBAction func farFieldChange(_ sender: UITextField){
        celsiusField.text = sender.text;
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        
        
    }


}

