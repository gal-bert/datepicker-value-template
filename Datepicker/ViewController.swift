//
//  ViewController.swift
//  Datepicker
//
//  Created by Gregorius Albert on 08/11/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var datePicker: UIDatePicker!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        datePicker.addTarget(self, action: #selector(getTimeValue), for: .valueChanged)
        
        let dateStr = "08:00"
        
        let dateFormatter = DateFormatter()
        dateFormatter.locale = Locale(identifier: "id")
        dateFormatter.dateFormat = "HH:mm"
        let date = dateFormatter.date(from: dateStr)

        datePicker.date = date!
        
    }
    
    @objc func getTimeValue() -> String {
        let date = Date()
        let calendar = Calendar.current
        var time: String = ""
        
        let hour = calendar.component(.hour, from: datePicker.date)
        let minute = calendar.component(.minute, from:  datePicker.date)
        let seconds = calendar.component(.second, from: datePicker.date)
        
        let hourString = hour < 10 ? "0\(hour)" : "\(hour)"
        let minuteString = minute < 10 ? "0\(minute)" : "\(minute)"
            
        time = "\(hourString):\(minuteString)"
        print(time)
        return time
    }
    

}

