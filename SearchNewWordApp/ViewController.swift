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
    
    let newWordList: [String: String] = [
      "모에모에쿵": "음식이 맛있어지는 주문",
      "빠태": "빠른 태세전환",
      "완내스": "완전 내 스타일",
      "무물보": "무엇이든 물어보세요",
      "스불재": "스스로 불러온 재앙",
      "당모치": "당연히 모든 치킨은 옳다",
      "너또다": "너 또라이라 다행이다",
      "상사병": "상사 때문에 얻는 홧병",
      "희연사": "희귀 연예인 사진",
      "핑프": "핑거 프린세스",
      "박박": "대박 + 대박 최고라는 의미",
      "좋댓구알": "좋아요, 댓글, 구독, 알림설정",
      "꾸꾸꾸": "꾸며도 꾸면도 꾸질꾸질",
      "하남자": "상남자의 반대말",
      "구취": "구독 취소",
      "돼지런하다": "돼지 + 부지런하다 = 먹을 때 부지런하다",
      "분조장": "분노조절장애",
      "마해자": "마스크에 미모가 가려진 사람"
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureUI()
        showButtonTitle()
    }

    func showButtonTitle() {
        var shuffledKeys: [String] = []
        
           for (key, _) in newWordList {
               shuffledKeys.append(key)
               shuffledKeys.shuffle()
            }
        
        newWordButton1.setTitle("\(shuffledKeys[0])", for: .normal)
        newWordButton2.setTitle("\(shuffledKeys[1])", for: .normal)
        newWordButton3.setTitle("\(shuffledKeys[2])", for: .normal)
        newWordButton4.setTitle("\(shuffledKeys[3])", for: .normal)
        newWordButton5.setTitle("\(shuffledKeys[4])", for: .normal)
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
        descriptionLabel.text = "뜻이 궁금한 신조어를 입력해보세요!"
        descriptionLabel.textColor = .black
        descriptionLabel.font = .boldSystemFont(ofSize: 18)
        descriptionLabel.textAlignment = .center
        descriptionLabel.numberOfLines = 0
        
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
    
    @IBAction func searchButtonClicked(_ sender: UIButton) {
        let key = searchTextField.text ?? ""
        
        if let value = newWordList[key] {
            descriptionLabel.text = value
        } else {
            descriptionLabel.text = "일치하는 신조어가 없습니다."
        }
        
        searchTextField.endEditing(true)
        
        var shuffledKeys: [String] = []
        
        for (key, _) in newWordList {
            shuffledKeys.append(key)
            shuffledKeys.shuffle()
         }
        
        newWordButton1.setTitle("\(shuffledKeys[0])", for: .normal)
        newWordButton2.setTitle("\(shuffledKeys[1])", for: .normal)
        newWordButton3.setTitle("\(shuffledKeys[2])", for: .normal)
        newWordButton4.setTitle("\(shuffledKeys[3])", for: .normal)
        newWordButton5.setTitle("\(shuffledKeys[4])", for: .normal)
    }
    
    @IBAction func firstButtonClicked(_ sender: UIButton) {
        guard let newWord = newWordButton1.titleLabel?.text else { return }
        searchTextField.text = newWord
        
        let value = newWordList[newWord]
        descriptionLabel.text = value
        searchTextField.endEditing(true)
        showButtonTitle()
    }
    
    @IBAction func secondButtonClicked(_ sender: UIButton) {
        guard let newWord = newWordButton2.titleLabel?.text else { return }
        searchTextField.text = newWord
        
        let value = newWordList[newWord]
        descriptionLabel.text = value
        searchTextField.endEditing(true)
        showButtonTitle()
    }
    
    @IBAction func thirdButtonClicked(_ sender: UIButton) {
        guard let newWord = newWordButton3.titleLabel?.text else { return }
        searchTextField.text = newWord
        
        let value = newWordList[newWord]
        descriptionLabel.text = value
        searchTextField.endEditing(true)
        showButtonTitle()
    }
    
    @IBAction func forthButtonClicked(_ sender: UIButton) {
        guard let newWord = newWordButton4.titleLabel?.text else { return }
        searchTextField.text = newWord
        
        let value = newWordList[newWord]
        descriptionLabel.text = value
        searchTextField.endEditing(true)
        showButtonTitle()
    }
    
    @IBAction func fifthButtonClicked(_ sender: UIButton) {
        guard let newWord = newWordButton5.titleLabel?.text else { return }
        searchTextField.text = newWord
        
        let value = newWordList[newWord]
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

