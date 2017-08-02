//
//  ViewController.swift
//  MiraclePill
//
//  Created by Admin on 7/26/17.
//  Copyright © 2017 TJSchoost. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var statePicker: UIPickerView!
    @IBOutlet weak var statePickerBtn: UIButton!
    @IBOutlet weak var fullName: UILabel!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var address: UILabel!
    @IBOutlet weak var addressTextField: UITextField!
    @IBOutlet weak var city: UILabel!
    @IBOutlet weak var cityTextField: UITextField!
    @IBOutlet weak var state: UILabel!
    @IBOutlet weak var country: UILabel!
    @IBOutlet weak var countryTextField: UITextField!
    @IBOutlet weak var zipCode: UILabel!
    @IBOutlet weak var zipCodeTextField: UITextField!
    @IBOutlet weak var buyNow: UIButton!
    
    
    
    let states = ["Alaska", "Arkansas", "Alabama", "New York", "California", "Florida", "Maine", "Wisconsin", "Minnesota", "North Dakota", "South Dakot"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        statePicker.dataSource = self
        statePicker.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    @IBAction func stateBtnPressed(_ sender: Any) {
        statePicker.isHidden = false
        country.isHidden = true
        countryTextField.isHidden = true
        zipCode.isHidden = true
        zipCodeTextField.isHidden = true
        buyNow.isHidden = true
        
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return states.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return states[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        statePickerBtn.setTitle(states[row], for: UIControlState.normal)
        statePicker.isHidden = true
        countryTextField.isHidden = false
        country.isHidden = false
        zipCodeTextField.isHidden = false
        zipCode.isHidden = false
        buyNow.isHidden = false
    }
    
    @IBAction func buyNowBtnPressed(_ sender: Any) {
    }
    

}

