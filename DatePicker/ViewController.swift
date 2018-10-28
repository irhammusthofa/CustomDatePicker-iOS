//
//  ViewController.swift
//  DatePicker
//
//  Created by Irham Mustofa Kamil on 17/10/18.
//  Copyright © 2018 Kamil IT Consultant. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "SegueDatePicker" {
            let popup = segue.destination as! DatePickerViewController
            let btn = sender as? UIButton
            if btn?.tag == 1 {
                popup.showTimePicker = true
            }
            popup.onSave = { (data:String) -> () in
                let _ = (sender as? UIButton)?.setTitle(data, for: .normal)
            }
        }
    }
    @IBAction func datePickerOneTouchUpInside(_ sender: UIButton) {
        performSegue(withIdentifier: "SegueDatePicker", sender: sender)
    }
    @IBAction func datePickerTwoTouchUpInside(_ sender: UIButton) {
        performSegue(withIdentifier: "SegueDatePicker", sender: sender)
    }
    @IBAction func datePickerThreeTouchUpInside(_ sender: UIButton) {
        performSegue(withIdentifier: "SegueDatePicker", sender: sender)
    }
}

