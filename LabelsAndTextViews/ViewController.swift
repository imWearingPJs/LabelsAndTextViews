//
//  ViewController.swift
//  LabelsAndTextViews
//
//  Created by Michael Kozub on 5/2/19.
//  Copyright © 2019 Michael Kozub. All rights reserved.
//

import UIKit
import Anchorage

class ViewController: UIViewController {
    
    let testLabel = UILabel()
    let testTextView = UITextView()
    let testText = "Lorem ipsum dolor sit amet, vel at idque vulputate concludaturque, ne eum erat bonorum officiis. Et pri dicam quaerendum, pro simul consul sadipscing id. Et mediocrem efficiantur liberavisse usu, per no prompta virtute adversarium. Sonet philosophia cum no."

    override func viewDidLoad() {
        super.viewDidLoad()
        addViews()
        addText()
    }
    
    func addViews() {
        self.view.addSubview(testLabel)
        testLabel.backgroundColor = #colorLiteral(red: 0.8823529412, green: 0.3450980392, blue: 0.1607843137, alpha: 1)
        testLabel.widthAnchor == self.view.safeAreaLayoutGuide.widthAnchor / 2
        testLabel.heightAnchor == self.view.safeAreaLayoutGuide.heightAnchor / 10
        testLabel.centerXAnchor == self.view.safeAreaLayoutGuide.centerXAnchor
        testLabel.topAnchor == self.view.safeAreaLayoutGuide.topAnchor + 25
        testLabel.numberOfLines = 0
//        testLabel.attributedText = NSAttributedString(string: "www.google.com")
        
        self.view.addSubview(testTextView)
        testTextView.backgroundColor = #colorLiteral(red: 0.8823529412, green: 0.3450980392, blue: 0.1607843137, alpha: 1)
        testTextView.widthAnchor == self.view.safeAreaLayoutGuide.widthAnchor / 2
        testTextView.heightAnchor == self.view.safeAreaLayoutGuide.heightAnchor / 10
        testTextView.centerXAnchor == self.view.safeAreaLayoutGuide.centerXAnchor
        testTextView.topAnchor == testLabel.safeAreaLayoutGuide.bottomAnchor + 25
        testTextView.isEditable = false

    }
    
    func addText() {
        testLabel.text = testText
        testLabel.font = UIFont(name: "Arial", size: 18)
        
        testTextView.text = testText
        testTextView.font = UIFont(name: "Arial", size: 18)
    }

}

