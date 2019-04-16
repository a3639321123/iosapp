//
//  ViewController.swift
//  IBO&IBAapp
//
//  Created by User24 on 2019/4/14.
//  Copyright © 2019 User24. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameText: UITextField!
    @IBOutlet weak var Birthdate: UIDatePicker!
    @IBOutlet weak var singleConsider: UISwitch!
    @IBOutlet weak var weightLable: UILabel!
    @IBOutlet weak var gender: UISegmentedControl!
    @IBOutlet weak var showLuck: UITextView!
    
    @IBOutlet weak var pic: UIImageView!
    
    @IBOutlet weak var weight: UISlider!
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    
    
    @IBAction func weightSlider(_ sender: Any) {
        weightLable.text = "\(Int(weight.value))"
    }
    
    @IBAction func calculateButtonPressed(_ sender: Any) {
        var luckNum = Int.random(in: 0...2)
        
        if gender.selectedSegmentIndex == 0 {
            luckNum = luckNum + 1
        }
        
        let weightLuckNum = Int(weight.value) % 3
        
        if weightLuckNum == 0 {
            luckNum = luckNum + 1
        }else if weightLuckNum == 1{
            luckNum = luckNum + 2
        }else{
        }
        
        if singleConsider.isOn{
            luckNum = luckNum + 1
        }
        
        let LuckNumFinal = luckNum % 3
        
        if nameText != nil &&
            LuckNumFinal == 0{
            pic.image=UIImage(named:"非")
            showLuck.text = "\("非！")"
        }
        else if nameText != nil &&
        LuckNumFinal == 1{
            pic.image=UIImage(named:"歐洲人")
            showLuck.text = "\("歐！")"
        }
        else if nameText != nil{
            pic.image=UIImage(named:"歐皇")
            showLuck.text = "\("歐皇！")"
        }else{
            
        }
    }
    
    @IBAction func dismissKetboard(_ sender: Any) {
    }
    
    
    @IBAction func hideKeyboard(_ sender: Any) {
        view.endEditing(true)
    }
    
    
}

