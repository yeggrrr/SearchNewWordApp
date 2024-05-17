//
//  ViewController.swift
//  SearchNewWordApp
//
//  Created by YJ on 5/17/24.
//

import UIKit

class SearchNewWordViewController: UIViewController {

    @IBOutlet var textFieldView: UIView!
    @IBOutlet var searchTextField: UITextField!
    @IBOutlet var searchButton: UIButton!
    
    @IBOutlet var descriptionLabel: UILabel!
    
    @IBOutlet var newWordButton1: UIButton!
    @IBOutlet var newWordButton2: UIButton!
    @IBOutlet var newWordButton3: UIButton!
    @IBOutlet var newWordButton5: UIButton!
    @IBOutlet var newWordButton4: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureUI()
    }

    func configureUI() {
        
        // textFieldView
        textFieldView.backgroundColor = .black
        
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
        descriptionLabel.textColor = .black
        descriptionLabel.font = .boldSystemFont(ofSize: 18)
        descriptionLabel.textAlignment = .center
        
        // newWordButton1
        newWordButton1.setTitle("1", for: .normal)
        newWordButton1.tintColor = .black
        newWordButton1.titleLabel?.font = .systemFont(ofSize: 11)
        newWordButton1.backgroundColor = .lightGray
        newWordButton1.layer.cornerRadius = 5
        
        // newWordButton2
        newWordButton2.setTitle("2", for: .normal)
        newWordButton2.tintColor = .black
        newWordButton2.titleLabel?.font = .systemFont(ofSize: 11)
        newWordButton2.backgroundColor = .lightGray
        newWordButton2.layer.cornerRadius = 5
        
        // newWordButton3
        newWordButton3.setTitle("3", for: .normal)
        newWordButton3.tintColor = .black
        newWordButton3.titleLabel?.font = .systemFont(ofSize: 11)
        newWordButton3.backgroundColor = .lightGray
        newWordButton3.layer.cornerRadius = 5
        
        // newWordButton4
        newWordButton4.setTitle("4", for: .normal)
        newWordButton4.tintColor = .black
        newWordButton4.titleLabel?.font = .systemFont(ofSize: 11)
        newWordButton4.backgroundColor = .lightGray
        newWordButton4.layer.cornerRadius = 5
        
        // newWordButton5
        newWordButton5.setTitle("5", for: .normal)
        newWordButton5.tintColor = .black
        newWordButton5.titleLabel?.font = .systemFont(ofSize: 12)
        newWordButton5.backgroundColor = .lightGray
        newWordButton5.layer.cornerRadius = 5
    }
    
    
    
    

}

