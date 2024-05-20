//
//  ViewController.swift
//  SearchNewWordApp
//
//  Created by YJ on 5/17/24.
//

import UIKit

class SearchNewWordViewController: UIViewController {
    @IBOutlet var addBarButtonItem: UIBarButtonItem!
    
    @IBOutlet var textFieldView: UIView!
    @IBOutlet var searchTextField: UITextField!
    @IBOutlet var searchButton: UIButton!
    
    @IBOutlet var newWordButton1: UIButton!
    @IBOutlet var newWordButton2: UIButton!
    @IBOutlet var newWordButton3: UIButton!
    @IBOutlet var newWordButton5: UIButton!
    @IBOutlet var newWordButton4: UIButton!
    
    @IBOutlet var descriptionLabel: UILabel!
    
    @IBOutlet var buttonsList: [UIButton]!
    
    var shuffledWordList: [String] = []
    
    var descriptionText: String {
        guard let key = searchTextField.text else { return "" }
        guard !key.isEmpty else { return "뜻이 궁금한 신조어를 입력해보세요!" }
        guard let value = DataStorage.shared.newWordList[key] else { return "일치하는 신조어가 없습니다." }
        return value
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureUI()
    }
    
    func configureUI() {
        title = "신조어 검색"
        
        // textFieldView
        textFieldView.backgroundColor = .black
        
        // addBarButtonItem
        addBarButtonItem.image = UIImage(systemName: "plus")
        addBarButtonItem.tintColor = .black
        
        // searchTextField
        searchTextField.placeholder = "신조어를 입력해주세요."
        searchTextField.tintColor = .black
        searchTextField.keyboardType = .default
        searchTextField.returnKeyType = .default
        
        // searchButton
        searchButton.setImage(UIImage(systemName: "magnifyingglass"), for: .normal)
        searchButton.setTitle("검색", for: .normal)
        searchButton.tintColor = .white
        
        // descriptionLabel
        descriptionLabel.text = "뜻이 궁금한 신조어를 입력해보세요!"
        descriptionLabel.textColor = .black
        descriptionLabel.font = .boldSystemFont(ofSize: 18)
        descriptionLabel.textAlignment = .center
        descriptionLabel.numberOfLines = 0
        
        updateButton()
    }
    
    func shuffled() {
        shuffledWordList = DataStorage.shared.newWordList.keys.shuffled()
    }
    
    func updateButton() {
        shuffled()
        for i in 0..<buttonsList.count {
            let button = buttonsList[i]
            let buttonTitle = shuffledWordList[i]
            button.setUI(title: buttonTitle)
            // buttonsUI(button, buttonTitle)
            button.setTitle(buttonTitle, for: .normal)
        }
    }
    
    @IBAction func buttonsClicked(_ sender: UIButton) {
        guard let newWord = buttonsList[sender.tag].titleLabel?.text else { return }
        searchTextField.text = newWord
        
        let value = DataStorage.shared.newWordList[newWord]
        descriptionLabel.text = value
        searchTextField.endEditing(true)
        updateButton()
    }
    
    @IBAction func searchButtonClicked(_ sender: UIButton) {
        descriptionLabel.text = descriptionText
        searchTextField.endEditing(true)
        updateButton()
    }
    
    @IBAction func textFieldClicked(_ sender: UITextField) {
        searchTextField.text = ""
    }
    
    @IBAction func didEndtextField(_ sender: UITextField) {
    }
}

extension UIButton {
    func setUI(title: String) {
        setTitle(title, for: .normal)
        tintColor = .black
        titleLabel?.font = .systemFont(ofSize: 12)
        backgroundColor = .clear
        layer.cornerRadius = 5
        layer.borderWidth = 1.5
        layer.borderColor = UIColor.black.cgColor
    }
}
