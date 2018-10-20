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
    
    private var farValue: Measurement<UnitTemperature>?{
        didSet{
            updateCelius();
        }
    };
    private var celValue: Measurement<UnitTemperature>?{
        if let farValue = farValue {
            return farValue.converted(to: .celsius)
        }else{
            return nil;
        }
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        updateCelius()
    }
    @IBAction func farFieldChange(_ sender: UITextField){
        if let text = sender.text, !text.isEmpty, let val = Double(text) {
            farValue = Measurement(value: val, unit: .fahrenheit);
        }else{
            farValue = nil;
        }
    }
    @IBAction func dismissKeyboard(_ sender: UITapGestureRecognizer){
        farField.resignFirstResponder();
    }
    private func updateCelius(){
        if let celValue = celValue {
            celsiusField.text = "\(celValue)";
        }else{
            celsiusField.text = "--";
        }
    
    }

}

