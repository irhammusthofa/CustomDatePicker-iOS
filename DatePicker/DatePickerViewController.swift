//
//  DatePickerViewController.swift
//  DatePicker
//
//  Created by Irham Mustofa Kamil on 28/10/18.
//  Copyright © 2018 Kamil IT Consultant. All rights reserved.
//

import UIKit

class DatePickerViewController: UIViewController {

    @IBOutlet weak var labelTitle: UILabel!
    @IBOutlet weak var datePicker: UIDatePicker!
    
    var onSave:((_ data:String) -> ())?
    var showTimePicker:Bool = false
    var formattedDate:String {
        get {
            let formatter = DateFormatter()
            formatter.dateStyle = .short
            return formatter.string(from: datePicker.date)
        }
    }
    var formattedTime:String{
        get{
            let formatter = DateFormatter()
            formatter.timeStyle = .short
            return formatter.string(from: datePicker.date)
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        if showTimePicker {
            labelTitle.text = "Select Time"
            datePicker.datePickerMode = .time
        }
    }
    @IBAction func saveTouchUpInside(_ sender: UIButton) {
        if showTimePicker {
            onSave?(formattedTime)
        }else{
            onSave?(formattedDate)
        }
        dismiss(animated: true)
    }
    @IBAction func cancelTouchUpInside(_ sender: UIButton) {
        dismiss(animated: true)
    }
}
