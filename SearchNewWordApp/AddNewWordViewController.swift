//
//  AddNewWordViewController.swift
//  SearchNewWordApp
//
//  Created by YJ on 5/17/24.
//

import UIKit

class AddNewWordViewController: UIViewController {
    @IBOutlet var exitButton: UIButton!
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var newWordLabel: UILabel!
    @IBOutlet var newWorldTextField: UITextField!
    @IBOutlet var descriptionLabel: UILabel!
    @IBOutlet var newDescriptionTextField: UITextField!
    @IBOutlet var addButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureUI()
    }
    
    func configureUI() {
        view.backgroundColor = .systemGray
        
        // labelUI
        labelUI(titleLabel, "신조어 추가하기", .center, 20)
        labelUI(newWordLabel, "신조어", .left, 17)
        labelUI(descriptionLabel, "의미", .left, 17)
        
        // textFieldUI
        textFieldUI(newWorldTextField, "띄어쓰기 없이 입력해주세요.")
        textFieldUI(newDescriptionTextField, "신조어 뜻을 입력해주세요.")
        
        // exitButton
        exitButton.setImage(UIImage(systemName: "xmark"), for: .normal)
        exitButton.tintColor = .black
        
        // addButton
        addButton.setTitle("추가", for: .normal)
        addButton.tintColor = .black
        addButton.titleLabel?.font = .systemFont(ofSize: 12)
        addButton.backgroundColor = .clear
        addButton.layer.cornerRadius = 5
        addButton.layer.borderWidth = 1.5
        addButton.layer.borderColor = UIColor.white.cgColor
    }
    
    func labelUI(_ label: UILabel, _ text: String, _ alignment: NSTextAlignment, _ fontSize: CGFloat ) {
        label.text = text
        label.textAlignment = alignment
        label.textColor = .black
        label.font = .boldSystemFont(ofSize: fontSize)
    }
    
    func textFieldUI(_ textfield: UITextField, _ string: String) {
        textfield.attributedPlaceholder = NSAttributedString(
            string: string,
            attributes: [NSAttributedString.Key.foregroundColor: UIColor.white]
        )
        textfield.tintColor = .white
        textfield.textColor = .white
        textfield.backgroundColor = .darkGray
        textfield.keyboardType = .default
        textfield.returnKeyType = .done
        textfield.keyboardAppearance = .dark
    }
    
    func alert(_ title: String, _ message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okButton = UIAlertAction(title: "확인", style: .default, handler: nil)
        
        alert.addAction(okButton)
        self.present(alert, animated: true, completion: nil)
    }
    
    @IBAction func addButtonClicked(_ sender: UIButton) {
        guard let newWord = self.newWorldTextField.text else { return }
        guard let newDescription = self.newDescriptionTextField.text else { return }
        
        if newWord.count >= 1 && newDescription.count >= 1 {
            DataStorage.shared.newWordList[newWord] = newDescription
            alert("\(newWord): \(newDescription)", "추가되었습니다!")
        } else {
            alert("추가할 신조어를 입력해주세요!", "")
        }
        
        newWorldTextField.text = ""
        newWorldTextField.endEditing(true)
        newDescriptionTextField.text = ""
        newDescriptionTextField.endEditing(true)
    }
    
    @IBAction func newWordTextDoneButtonClicked(_ sender: UITextField) {
    }
    
    @IBAction func descriptionTextFieldDoneButtonClicked(_ sender: UITextField) {
    }
    
    @IBAction func exitButtonClicked(_ sender: UIButton) {
        self.dismiss(animated: true)
    }
}
