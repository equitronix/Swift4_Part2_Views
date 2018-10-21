//
//  ViewController.swift
//  Swift4_Part2
//
//  Created by Admin on 18/10/18.
//  Copyright © 2018 Equitronix. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

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
    
    private let nf: NumberFormatter = {
        let nf = NumberFormatter();
        nf.numberStyle = .decimal
        nf.minimumFractionDigits = 1;
        nf.maximumFractionDigits = 1;
        return nf;
    }();

    override func viewDidLoad() {
        super.viewDidLoad()
        updateCelius()
        farField.delegate = self;
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
            celsiusField.text = nf.string(from: NSNumber(value: celValue.value));
        }else{
            celsiusField.text = "--";
        }
    
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        var retVal = true;
        if !NSCharacterSet.decimalDigits.isSuperset(of: CharacterSet(charactersIn: string)) {
            retVal = false;
        }
        if retVal, let text = farField.text {
            if text.contains(".") {
                if string.contains("."){
                    retVal = false;
                }
                
            }
        }
        
        
        return retVal;
    }

}

