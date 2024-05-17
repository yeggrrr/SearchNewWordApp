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
    @IBOutlet var descriptionTextField: UITextField!
    @IBOutlet var addButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureUI()
    }
    
    func configureUI() {
        
        view.backgroundColor = .systemGray
        
        // exitButton
        exitButton.setImage(UIImage(systemName: "xmark"), for: .normal)
        exitButton.tintColor = .black
        
        // titleLabel
        titleLabel.text = "신조어 추가하기"
        titleLabel.textAlignment = .center
        titleLabel.textColor = .black
        titleLabel.font = .boldSystemFont(ofSize: 20)
        
        // newWordLabel
        newWordLabel.text = "신조어"
        newWordLabel.textAlignment = .left
        newWordLabel.textColor = .black
        newWordLabel.font = .boldSystemFont(ofSize: 17)
        
        // newWorldTextField
        newWorldTextField.attributedPlaceholder = NSAttributedString(
            string: "띄어쓰기 없이 입력해주세요.",
            attributes: [NSAttributedString.Key.foregroundColor: UIColor.white]
        )
        newWorldTextField.tintColor = .white
        newWorldTextField.textColor = .white
        newWorldTextField.backgroundColor = .darkGray
        newWorldTextField.keyboardType = .default
        newWorldTextField.returnKeyType = .done
        newWorldTextField.keyboardAppearance = .dark
        
        // descriptionLabel
        descriptionLabel.text = "의미"
        descriptionLabel.textAlignment = .left
        descriptionLabel.textColor = .black
        descriptionLabel.font = .boldSystemFont(ofSize: 17)
        
        // descriptionTextField
        descriptionTextField.attributedPlaceholder = NSAttributedString(
            string: "신조어 뜻을 입력해주세요.",
            attributes: [NSAttributedString.Key.foregroundColor: UIColor.white]
        )
        descriptionTextField.tintColor = .white
        descriptionTextField.textColor = .white
        descriptionTextField.backgroundColor = .darkGray
        descriptionTextField.keyboardType = .default
        descriptionTextField.returnKeyType = .done
        descriptionTextField.keyboardAppearance = .dark
        
        // addButton
        addButton.setTitle("추가", for: .normal)
        addButton.tintColor = .black
        addButton.titleLabel?.font = .systemFont(ofSize: 12)
        addButton.backgroundColor = .clear
        addButton.layer.cornerRadius = 5
        addButton.layer.borderWidth = 1.5
        addButton.layer.borderColor = UIColor.white.cgColor
    }
    
    @IBAction func addButtonClicked(_ sender: UIButton) {
        
        guard let newWord = self.newWorldTextField.text else { return }
        guard let newDescription = self.descriptionTextField.text else { return }
        
        if newWord.count >= 1 && newDescription.count >= 1 {
            DataStorage.shared.newWordList[newWord] = newDescription
            
            let alert = UIAlertController(title: "\(newWord): \(newDescription)", message: "추가되었습니다!", preferredStyle: .alert)
            let okButton = UIAlertAction(title: "확인", style: .default, handler: nil)
            
            alert.addAction(okButton)
            
            self.present(alert, animated: true, completion: nil)
        } else {
            let alert = UIAlertController(title: "추가할 신조어를 입력해주세요!", message: "", preferredStyle: .alert)
            let okButton = UIAlertAction(title: "확인", style: .default, handler: nil)
            
            alert.addAction(okButton)
            
            self.present(alert, animated: true, completion: nil)
        }
        
        newWorldTextField.text = ""
        descriptionTextField.text = ""
        newWorldTextField.endEditing(true)
        descriptionTextField.endEditing(true)
    }
    
    @IBAction func exitButtonClicked(_ sender: UIButton) {
        self.dismiss(animated: true)
    }
}
