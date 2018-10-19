//
//  ViewController.swift
//  Swift4_Part2
//
//  Created by Admin on 18/10/18.
//  Copyright © 2018 Equitronix. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var farField: UITextField!;
    @IBOutlet var celsiusField: UILabel!;
    override func viewDidLoad() {
        super.viewDidLoad()
        celsiusField.text = "--";
    }
    @IBAction func farFieldChange(_ sender: UITextField){
        if let text = sender.text, !text.isEmpty {
            celsiusField.text = sender.text;
        }else{
            celsiusField.text = "--";
        }
    }
    @IBAction func dismissKeyboard(_ sender: UITapGestureRecognizer){
        farField.resignFirstResponder();
    }

}

