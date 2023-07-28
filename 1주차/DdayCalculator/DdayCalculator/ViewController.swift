//
//  ViewController.swift
//  DdayCalculator
//
//  Created by 황인호 on 2023/07/20.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var datePicker: UIDatePicker!
    @IBOutlet var firstDdayLabel: UILabel!
    @IBOutlet var secondDdayLabel: UILabel!
    @IBOutlet var thirdDdayLabel: UILabel!
    @IBOutlet var fourthDdayLabel: UILabel!
    
    @IBOutlet var firstPlusDate: UILabel!
    @IBOutlet var secondPlusDate: UILabel!
    @IBOutlet var thirdPlusDate: UILabel!
    @IBOutlet var fourthPlusDate: UILabel!
    
    @IBOutlet var firstImageView: UIImageView!
    @IBOutlet var secondImageView: UIImageView!
    @IBOutlet var thirdImageView: UIImageView!
    @IBOutlet var fourthImageView: UIImageView!
    
    lazy var dayLabel = [firstDdayLabel, secondDdayLabel, thirdDdayLabel, fourthDdayLabel]
    lazy var plusDayLabel = [firstPlusDate, secondPlusDate, thirdPlusDate, fourthPlusDate]
    lazy var imageView = [firstImageView, secondImageView, thirdImageView, fourthImageView]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       
    }
    
    
    
    
    func setupUI() {
        for label in dayLabel {
            label?.text = ""
            label?.font = .boldSystemFont(ofSize: 20)
            label?.textColor = .white
        }
        for label in plusDayLabel {
            label?.text = ""
            label?.font = .italicSystemFont(ofSize: 20)
            label?.textColor = .white
            label?.textAlignment = .center
        }
        for image in imageView {
            image?.layer.cornerRadius = 20
            image?.clipsToBounds = true
            image?.layer.shadowColor = UIColor.red.cgColor
            image?.layer.shadowRadius = 10
            image?.layer.shadowOpacity = 0.5
        }
    }
    
   
    
    @IBAction func firstDayInputButton(_ sender: UIButton) {
        let storyboard = UIStoryboard.init(name: "Main", bundle: nil)
                let popUp = storyboard.instantiateViewController(withIdentifier: "popupview")
                popUp.modalPresentationStyle = .overFullScreen
                popUp.modalTransitionStyle = .crossDissolve
                
                self.present(popUp, animated: true)
    }
//    
//    @IBAction func secondDayInputButton(_ sender: UIButton) {
//        dayInput(Dday: secondDdayLabel,
//                 plusResultDate: secondPlusDate)
//    }
//    
//    @IBAction func thirdDayInputButton(_ sender: UIButton) {
//        dayInput(Dday: thirdDdayLabel, plusResultDate: thirdPlusDate)
//    }
//    @IBAction func fourthDdayLabel(_ sender: UIButton) {
//        dayInput(Dday: fourthDdayLabel, plusResultDate: fourthPlusDate)
//    }
    
    
    
//    func dayInput(Dday: UILabel, plusResultDate: UILabel) {
//
//        let alert = UIAlertController(title: "D-Day", message: "값을 입력해주세요", preferredStyle: .alert)
//
//        let ok = UIAlertAction(title: "OK", style: .default) {
//            (ok) in
//            Dday.text = "D + \(alert.textFields![0].text!)"
//            let plusDate = Int(alert.textFields![0].text!)
//            let result = Calendar.current.date(byAdding: .day, value: plusDate ?? 0, to: self.datePicker.date)
//            let format = DateFormatter()
//            format.dateFormat = "yyyy년 MM월 dd일"
//            let dayValue = format.string(from: result!)
//            plusResultDate.text = dayValue
//
//        }
//        let cancel = UIAlertAction(title: "cancel", style: .cancel)
//        alert.addAction(cancel)
//        alert.addAction(ok)
//        alert.addTextField { (dayField) in dayField.keyboardType = .numberPad
//            dayField.placeholder = "숫자만 입력해주세요"
//        }
//        self.present(alert, animated: true)
//    }
  
    @IBAction func firstButtonTapped(_ sender: Any) {
        
        
        
    }
    
}




class PopUpViewConroller: UIViewController {
    private var titleText: String?
    private var messageText: String?
    private var attributedMessageText: NSAttributedString?
    private var contentView: UIView?
}




extension ViewController: UITextFieldDelegate {
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        let currentText = textField.text ?? ""
        guard let stringRange = Range(range, in: currentText) else { return false }
        let updateText = currentText.replacingCharacters(in: stringRange, with: string)
        return updateText.count < 5
    }
        }

class CustomUITextField: UITextField {
    override func canPerformAction(_ action: Selector, withSender sender: Any?) -> Bool {
        if action == #selector(UIResponderStandardEditActions.paste(_:)) {
            return false
        }
        return super.canPerformAction(action, withSender: sender)
   }
    
}

