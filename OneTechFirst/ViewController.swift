//
//  ViewController.swift
//  OneTechFirst
//
//  Created by  Mukhammed Ali Khamzayev on 26.10.2022.
//

import UIKit
import SnapKit

class ViewController: UIViewController {

  
    var firstNum: String = ""
    
    var secondNum: String = ""
    
    var operation: String = ""
    
    var haveResult: Bool = false
    
    var resultNum: String = ""
    
    var numAfterResult: String = ""
    
    private let stackView: UIStackView = {
        let stView = UIStackView()
        stView.spacing = 10
        stView.backgroundColor = .black
        stView.distribution = .fillEqually
        stView.alignment = .fill
        return stView
    }()
    
    private let labelNew: UILabel = {
        let label = UILabel()
        label.text = "0"
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 90)
        
        return label
    }()
    
    private let myView1: UIStackView = {
        let view = UIStackView()
        view.alignment = .fill
        view.spacing = 10
        view.distribution = .fillEqually
        view.backgroundColor = .black
        return view
    }()
    
    private let myView2: UIStackView = {
        let view = UIStackView()
        view.spacing = 10
        view.alignment = .fill
        view.distribution = .fillEqually
        return view
    }()
    
    private let myView3: UIStackView = {
        let view = UIStackView()
        view.spacing = 10
        view.alignment = .fill
        view.distribution = .fillEqually
        return view
    }()
    
    
    private let myView4: UIStackView = {
        let view = UIStackView()
        view.spacing = 10
        view.alignment = .fill
        view.distribution = .fillEqually
        return view
    }()
    
    
    private let myView5: UIStackView = {
        let view = UIStackView()
        view.spacing = 10
        view.alignment = .fill
        view.distribution = .fillEqually
        return view
    }()
    
   
    
 
    
    private let button1: UIButton = {
        let button = UIButton()
        button.setTitle("AC", for: .normal)
        button.backgroundColor = .gray
        button.layer.cornerRadius = 44
        return button
    }()
    
    private let button2: UIButton = {
        let button = UIButton()
        button.setTitle("+/-", for: .normal)
        button.backgroundColor = .gray
        button.layer.cornerRadius = 44
        return button
    }()
    
    private let button3: UIButton = {
        let button = UIButton()
        button.setTitle("%", for: .normal)
        button.backgroundColor = .gray
        button.layer.cornerRadius = 44
        return button
    }()
    
    private let button4: UIButton = {
        let button = UIButton()
        button.setTitle("÷", for: .normal)
        button.backgroundColor = .orange
        button.layer.cornerRadius = 44
        return button
    }()
    
    
    private let secondButton1: UIButton = {
        let button = UIButton()
        button.setTitle("7", for: .normal)
        button.backgroundColor = .darkGray
        button.layer.cornerRadius = 44
        button.addTarget(self, action: #selector(seventhClick), for: .touchUpInside)
        return button
    }()
    
    private let secondButton2: UIButton = {
        let button = UIButton()
        button.setTitle("8", for: .normal)
        button.backgroundColor = .darkGray
        button.layer.cornerRadius = 44
        button.addTarget(self, action: #selector(eightClick), for: .touchUpInside)
        return button
    }()
    
    private let secondButton3: UIButton = {
        let button = UIButton()
        button.setTitle("9", for: .normal)
        button.backgroundColor = .darkGray
        button.layer.cornerRadius = 44
        button.addTarget(self, action: #selector(nineClick), for: .touchUpInside)
        return button
    }()
    
    private let secondButton4: UIButton = {
        let button = UIButton()
        button.backgroundColor = .orange
        button.setTitle("X", for: .normal)
        button.layer.cornerRadius = 44
        return button
    }()
    
    private let thirdButton1: UIButton = {
        let button = UIButton()
        button.setTitle("4", for: .normal)
        button.backgroundColor = .darkGray
        button.layer.cornerRadius = 44
        button.addTarget(self, action: #selector(fourthClick), for: .touchUpInside)
        return button
    }()
    
    private let thirdButton2: UIButton = {
        let button = UIButton()
        button.setTitle("5", for: .normal)
        button.backgroundColor = .darkGray
        button.layer.cornerRadius = 44
        button.addTarget(self, action: #selector(fifthClick), for: .touchUpInside)
        return button
    }()
    
    private let thirdButton3: UIButton = {
        let button = UIButton()
        button.setTitle("6", for: .normal)
        button.backgroundColor = .darkGray
        button.layer.cornerRadius = 44
        button.addTarget(self, action: #selector(sixthClick), for: .touchUpInside)
        return button
    }()
    
    private let thirdButton4: UIButton = {
        let button = UIButton()
        button.setTitle("-", for: .normal)
        button.backgroundColor = .orange
        button.layer.cornerRadius = 44
        return button
    }()
    
    
    private let fourthButton1: UIButton = {
        let button = UIButton()
        button.setTitle("1", for: .normal)
        button.backgroundColor = .darkGray
        button.layer.cornerRadius = 44
        button.addTarget(self, action: #selector(firstClick), for: .touchUpInside)
        return button
    }()
    
    private let fourthButton2: UIButton = {
        let button = UIButton()
        button.setTitle("2", for: .normal)
        button.backgroundColor = .darkGray
        button.layer.cornerRadius = 44
        button.addTarget(self, action: #selector(secondClick), for: .touchUpInside)
        return button
    }()
    
    private let fourthButton3: UIButton = {
        let button = UIButton()
        button.setTitle("3", for: .normal)
        button.backgroundColor = .darkGray
        button.layer.cornerRadius = 44
        button.addTarget(self, action: #selector(thirdClick), for: .touchUpInside)
        return button
    }()
    
    private let fourthButton4: UIButton = {
        let button = UIButton()
        button.setTitle("+", for: .normal)
        button.backgroundColor = .orange
        button.layer.cornerRadius = 50
        return button
    }()
    
    
    private let fifthButton1: UIButton = {
        let button = UIButton()
        button.setTitle("0", for: .normal)
        button.backgroundColor = .darkGray
        button.layer.cornerRadius = 50
        return button
    }()
    
    private let fifthButton2: UIButton = {
        let button = UIButton()
        button.setTitle(".", for: .normal)
        button.backgroundColor = .darkGray
        button.layer.cornerRadius = 50
        return button
    }()
    
    private let fifthButton3: UIButton = {
        let button = UIButton()
        button.setTitle("=", for: .normal)
        button.backgroundColor = .orange
        button.layer.cornerRadius = 50
        return button
    }()
    

    
    private let box: UIView = {
        let boxer = UIView()
        boxer.backgroundColor = .black
        return boxer
    }()
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(stackView)
        stackView.addSubview(labelNew)
        stackView.addSubview(myView1)
        stackView.addSubview(myView2)
        stackView.addSubview(myView3)
        stackView.addSubview(myView4)
        stackView.addSubview(myView5)
        
        
//        view.addSubview(labelNew)
//        view.addSubview(myView1)
//        view.addSubview(myView2)
//        view.addSubview(myView3)
//        view.addSubview(myView4)
//        view.addSubview(myView5)
        
       
       
        
        
        stackView.snp.makeConstraints {
            $0.edges.equalTo(view)
        }
        
        labelNew.snp.makeConstraints {
            $0.right.equalTo(view).inset(0)
            $0.bottom.equalTo(myView1.snp.top).inset(0)
        }
        
        myView1.snp.makeConstraints {
            $0.height.equalTo(95)
            $0.width.equalTo(95)
            $0.top.equalTo(labelNew.snp.bottom)
            $0.left.right.equalTo(view)
            $0.bottom.equalTo(myView2.snp.top).offset(-5)
        }
        myView2.snp.makeConstraints {
            $0.height.equalTo(95)
            $0.top.equalTo(myView1.snp.bottom)
            $0.left.right.equalTo(view)
            $0.bottom.equalTo(myView3.snp.top).offset(-5)
        }
        myView3.snp.makeConstraints {
            $0.height.equalTo(95)
            $0.top.equalTo(myView2.snp.bottom)
            $0.left.right.equalTo(view)
            $0.bottom.equalTo(myView4.snp.top).offset(-5)
        }
        myView4.snp.makeConstraints  {
            $0.height.equalTo(95)
            $0.top.equalTo(myView3.snp.bottom)
            $0.left.right.equalTo(view)
            $0.bottom.equalTo(myView5.snp.top).offset(-5)
        }
        myView5.snp.makeConstraints  {
            $0.height.equalTo(95)
            $0.top.equalTo(myView4.snp.bottom)
            $0.left.right.equalTo(view)
            $0.bottom.equalTo(view).inset(10)
        }
        
        
        
//        labelNew.snp.makeConstraints() { make in
//
//            make.top.equalToSuperview().offset(205)
//            make.right.equalToSuperview().inset(20)
//
//        }
//        myView1.snp.makeConstraints { make in
////            make.width.equalTo(50)
////            make.height.equalTo(100)
//
//            make.top.equalToSuperview().offset(310)
//            make.leading.trailing.equalToSuperview().offset(0)
//            make.height.equalTo(100)
//            }
//
//        myView2.snp.makeConstraints { make in
////            make.width.equalTo(50)
////            make.height.equalTo(100)
//            make.top.equalToSuperview().offset(420)
//           // make.leading.equalToSuperview().offset(100).priority(1)
//            make.leading.equalToSuperview().offset(0)
//            make.trailing.equalToSuperview().offset(0)
//            make.height.equalTo(100)
//            }
//
//        myView3.snp.makeConstraints { make in
////            make.width.equalTo(50)
////            make.height.equalTo(100)
//            make.top.equalToSuperview().offset(530)
//           // make.leading.equalToSuperview().offset(100).priority(1)
//            make.leading.equalToSuperview().offset(0)
//            make.trailing.equalToSuperview().offset(0)
//            make.height.equalTo(100)
//            }
//
//        myView4.snp.makeConstraints { make in
////            make.width.equalTo(50)
////            make.height.equalTo(100)
//            make.top.equalToSuperview().offset(640)
//           // make.leading.equalToSuperview().offset(100).priority(1)
//            make.leading.equalToSuperview().offset(0)
//            make.trailing.equalToSuperview().offset(0)
//            make.height.equalTo(100)
//            }
//
//
//        myView5.snp.makeConstraints { make in
////            make.width.equalTo(50)
////            make.height.equalTo(100)
//            make.top.equalToSuperview().offset(750)
//           // make.leading.equalToSuperview().offset(100).priority(1)
//            make.leading.equalToSuperview().offset(0)
//            make.trailing.equalToSuperview().offset(0)
//            make.height.equalTo(100)
//            }
//
//
//
//
//
//
            myView1.addArrangedSubview(button1)
            myView1.addArrangedSubview(button2)
            myView1.addArrangedSubview(button3)
            myView1.addArrangedSubview(button4)

            myView2.addArrangedSubview(secondButton1)
            myView2.addArrangedSubview(secondButton2)
            myView2.addArrangedSubview(secondButton3)
            myView2.addArrangedSubview(secondButton4)

            myView3.addArrangedSubview(thirdButton1)
            myView3.addArrangedSubview(thirdButton2)
            myView3.addArrangedSubview(thirdButton3)
            myView3.addArrangedSubview(thirdButton4)

            myView4.addArrangedSubview(fourthButton1)
            myView4.addArrangedSubview(fourthButton2)
            myView4.addArrangedSubview(fourthButton3)
            myView4.addArrangedSubview(fourthButton4)

            myView5.addArrangedSubview(fifthButton1)
            myView5.addArrangedSubview(fifthButton2)
            myView5.addArrangedSubview(fifthButton3)

//
//        }
        
    
        //TESTING BORDER
    

//        myView.addSubview(label)
//        label.snp.makeConstraints{ make in
//            make.width.equalTo(100)
//            make.height.equalTo(50)
//            make.center.equalToSuperview()
//        }
        // Do any additional setup after loading the view.
    
    
   


        
}
    @objc func firstClick() {
        if operation == "" {
            firstNum += fourthButton1.currentTitle!
            labelNew.text = firstNum
        }
        
    }
    
    @objc func secondClick() {
        if operation == "" {
            firstNum += fourthButton2.currentTitle!
            labelNew.text = firstNum
        }
        
    }
    
    @objc func thirdClick() {
        if operation == "" {
            firstNum += fourthButton3.currentTitle!
            labelNew.text = firstNum
        }
        
    }
    
    @objc func fourthClick() {
        if operation == "" {
            firstNum += thirdButton1.currentTitle!
            labelNew.text = firstNum
        }
        
    }
    
    
    @objc func fifthClick() {
        if operation == "" {
            firstNum += thirdButton2.currentTitle!
            labelNew.text = firstNum
        }
        
    }
    
    
    @objc func sixthClick() {
        if operation == "" {
            firstNum += thirdButton3.currentTitle!
            labelNew.text = firstNum
        }
        
    }
    

    @objc func seventhClick() {
        if operation == "" {
            firstNum += secondButton1.currentTitle!
            labelNew.text = firstNum
        }
        
    }
    
    
    @objc func eightClick() {
        if operation == "" {
            firstNum += secondButton2.currentTitle!
            labelNew.text = firstNum
        }
        
    }
    
    @objc func nineClick() {
        if operation == "" {
            firstNum += secondButton3.currentTitle!
            labelNew.text = firstNum
        }
        
    }
    
    
    
    
}






