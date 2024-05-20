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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureUI()
    }

    func showButtonTitle() {
        let shuffledWordList = DataStorage.shared.newWordList.keys.shuffled()
        
        newWordButton1.setTitle("\(shuffledWordList[0])", for: .normal)
        newWordButton2.setTitle("\(shuffledWordList[1])", for: .normal)
        newWordButton3.setTitle("\(shuffledWordList[2])", for: .normal)
        newWordButton4.setTitle("\(shuffledWordList[3])", for: .normal)
        newWordButton5.setTitle("\(shuffledWordList[4])", for: .normal)
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
        
        // buttonUI
        buttonsUI(newWordButton1, "1")
        buttonsUI(newWordButton2, "2")
        buttonsUI(newWordButton3, "3")
        buttonsUI(newWordButton4, "4")
        buttonsUI(newWordButton5, "5")

    }
    
    func buttonsUI(_ button: UIButton, _ title: String) {
        
        button.setTitle(title, for: .normal)
        button.tintColor = .black
        button.titleLabel?.font = .systemFont(ofSize: 12)
        button.backgroundColor = .clear
        button.layer.cornerRadius = 5
        button.layer.borderWidth = 1.5
        button.layer.borderColor = UIColor.black.cgColor
    }
    
    @IBAction func buttonsClicked(_ sender: UIButton) {
        
        guard let newWord = newWordButton1.titleLabel?.text else { return }
        searchTextField.text = newWord
        
        let value = DataStorage.shared.newWordList[newWord]
        descriptionLabel.text = value
        searchTextField.endEditing(true)
        showButtonTitle()
    }
    
    @IBAction func searchButtonClicked(_ sender: UIButton) {
        guard let key = searchTextField.text else { return }
        
        if let value = DataStorage.shared.newWordList[key] {
            descriptionLabel.text = value
        } else if key == "" {
            descriptionLabel.text = "뜻이 궁금한 신조어를 입력해보세요!"
        } else {
            descriptionLabel.text = "일치하는 신조어가 없습니다."
        }
        
        searchTextField.endEditing(true)
        
        let shuffledWordList = DataStorage.shared.newWordList.keys.shuffled()
        let tag = shuffledWordList[sender.tag]
        
        buttonsList[sender.tag].setTitle("\(tag)", for: .normal)
    }
    
    @IBAction func textFieldClicked(_ sender: UITextField) {
        searchTextField.text = ""
    }

    @IBAction func didEndtextField(_ sender: UITextField) {
    }
}

