//
//  popupWindowViewcontroller.swift
//  DdayCalculator
//
//  Created by 황인호 on 2023/07/27.
//

import UIKit

class popupWindowViewcontroller: UIViewController {
    
    @IBOutlet var popupView: UIView!
    @IBOutlet var inputTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        popupView.clipsToBounds = true
        popupView.layer.cornerRadius = 10
        view.backgroundColor = UIColor.init(red: 0, green: 0, blue: 0, alpha: 0.4)
        view.isOpaque = false
    }
  
    
    func dayInput(Dday: UILabel, plusResultDate: UILabel) {
        Dday.text = "D + \(inputTextField.text!)"
        let plusDate = Int(inputTextField.text!)
//                    let result = Calendar.current.date(byAdding: .day, value: plusDate ?? 0, to: self.datePicker.date)
//                    let format = DateFormatter()
//                    format.dateFormat = "yyyy년 MM월 dd일"
//                    let dayValue = format.string(from: result!)
//                    plusResultDate.text = dayValue
        
    }
    
    
    
//    
//    @IBAction func okButtonTapped(_ sender: UIButton) {
//        dismiss(animated: true)
//        dayInput(Dday: <#T##UILabel#>, plusResultDate: <#T##UILabel#>)
//    }
//  
    @IBAction func cancelButtonTapped(_ sender: UIButton) {
        dismiss(animated: true)

    }
    
    
  
}
