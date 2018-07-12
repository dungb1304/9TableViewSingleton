//
//  ViewController.swift
//  9TableViewSingleton
//
//  Created by DungB96 on 2018/06/13.
//  Copyright © 2018 DungB96. All rights reserved.
//

import UIKit




class ViewController: UIViewController {
    
    
    @IBOutlet weak var textField: UITextField!
    var index : Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        if let indexPath = index {
            textField.text = String(Singleton.sendData.numbers[indexPath])
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func btnSendBack(_ sender: Any) {
        if textField.text != "" {
            if let indexPath = index {
                Singleton.sendData.numbers[indexPath] = Int(textField.text!) ?? 0
            }
        }
        navigationController?.popViewController(animated: true)
    }
    
}

