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
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureUI()
        showButtonTitle()
    }

    func showButtonTitle() {
        var shuffledKeys: [String] = []
        
        let shuffledWordList = DataStorage.shared.newWordList.keys.shuffled()
        shuffledKeys = shuffledWordList
        
        newWordButton1.setTitle("\(shuffledKeys[0])", for: .normal)
        newWordButton2.setTitle("\(shuffledKeys[1])", for: .normal)
        newWordButton3.setTitle("\(shuffledKeys[2])", for: .normal)
        newWordButton4.setTitle("\(shuffledKeys[3])", for: .normal)
        newWordButton5.setTitle("\(shuffledKeys[4])", for: .normal)
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
        searchTextField.keyboardType = .asciiCapable
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
        
        // newWordButton1
        newWordButton1.setTitle("1", for: .normal)
        newWordButton1.tintColor = .black
        newWordButton1.titleLabel?.font = .systemFont(ofSize: 12)
        newWordButton1.backgroundColor = .clear
        newWordButton1.layer.cornerRadius = 5
        newWordButton1.layer.borderWidth = 1.5
        newWordButton1.layer.borderColor = UIColor.black.cgColor
        
        // newWordButton2
        newWordButton2.setTitle("2", for: .normal)
        newWordButton2.tintColor = .black
        newWordButton2.titleLabel?.font = .systemFont(ofSize: 12)
        newWordButton2.backgroundColor = .clear
        newWordButton2.layer.cornerRadius = 5
        newWordButton2.layer.borderWidth = 1.5
        newWordButton2.layer.borderColor = UIColor.black.cgColor
        
        // newWordButton3
        newWordButton3.setTitle("3", for: .normal)
        newWordButton3.tintColor = .black
        newWordButton3.titleLabel?.font = .systemFont(ofSize: 12)
        newWordButton3.backgroundColor = .clear
        newWordButton3.layer.cornerRadius = 5
        newWordButton3.layer.borderWidth = 1.5
        newWordButton3.layer.borderColor = UIColor.black.cgColor
        
        // newWordButton4
        newWordButton4.setTitle("4", for: .normal)
        newWordButton4.tintColor = .black
        newWordButton4.titleLabel?.font = .systemFont(ofSize: 12)
        newWordButton4.backgroundColor = .clear
        newWordButton4.layer.cornerRadius = 5
        newWordButton4.layer.borderWidth = 1.5
        newWordButton4.layer.borderColor = UIColor.black.cgColor
        
        // newWordButton5
        newWordButton5.setTitle("5", for: .normal)
        newWordButton5.tintColor = .black
        newWordButton5.titleLabel?.font = .systemFont(ofSize: 12)
        newWordButton5.backgroundColor = .clear
        newWordButton5.layer.cornerRadius = 5
        newWordButton5.layer.borderWidth = 1.5
        newWordButton5.layer.borderColor = UIColor.black.cgColor
    }
    
    @IBAction func searchButtonClicked(_ sender: UIButton) {
        guard let key = searchTextField.text else { return }
        
        if let value = DataStorage.shared.newWordList[key] {
            descriptionLabel.text = value
        } else if key == "" {
            descriptionLabel.text = "일치하는 신조어가 없습니다."
        } else {
            descriptionLabel.text = "일치하는 신조어가 없습니다."
        }
        
        searchTextField.endEditing(true)
        
        var shuffledKeys: [String] = []
        
        let shuffledWordList = DataStorage.shared.newWordList.keys.shuffled()
        shuffledKeys = shuffledWordList
        
        newWordButton1.setTitle("\(shuffledKeys[0])", for: .normal)
        newWordButton2.setTitle("\(shuffledKeys[1])", for: .normal)
        newWordButton3.setTitle("\(shuffledKeys[2])", for: .normal)
        newWordButton4.setTitle("\(shuffledKeys[3])", for: .normal)
        newWordButton5.setTitle("\(shuffledKeys[4])", for: .normal)
    }
    
    @IBAction func firstButtonClicked(_ sender: UIButton) {
        guard let newWord = newWordButton1.titleLabel?.text else { return }
        searchTextField.text = newWord
        
        let value = DataStorage.shared.newWordList[newWord]
        descriptionLabel.text = value
        searchTextField.endEditing(true)
        showButtonTitle()
    }
    
    @IBAction func secondButtonClicked(_ sender: UIButton) {
        guard let newWord = newWordButton2.titleLabel?.text else { return }
        searchTextField.text = newWord
        
        let value = DataStorage.shared.newWordList[newWord]
        descriptionLabel.text = value
        searchTextField.endEditing(true)
        showButtonTitle()
    }
    
    @IBAction func thirdButtonClicked(_ sender: UIButton) {
        guard let newWord = newWordButton3.titleLabel?.text else { return }
        searchTextField.text = newWord
        
        let value = DataStorage.shared.newWordList[newWord]
        descriptionLabel.text = value
        searchTextField.endEditing(true)
        showButtonTitle()
    }
    
    @IBAction func forthButtonClicked(_ sender: UIButton) {
        guard let newWord = newWordButton4.titleLabel?.text else { return }
        searchTextField.text = newWord
        
        let value = DataStorage.shared.newWordList[newWord]
        descriptionLabel.text = value
        searchTextField.endEditing(true)
        showButtonTitle()
    }
    
    @IBAction func fifthButtonClicked(_ sender: UIButton) {
        guard let newWord = newWordButton5.titleLabel?.text else { return }
        searchTextField.text = newWord
        
        let value = DataStorage.shared.newWordList[newWord]
        descriptionLabel.text = value
        searchTextField.endEditing(true)
        showButtonTitle()
    }
    
    @IBAction func textFieldClicked(_ sender: UITextField) {
        searchTextField.text = ""
    }

    @IBAction func didEndtextField(_ sender: UITextField) {
        
    }
}

