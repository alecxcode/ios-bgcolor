//
//  ViewController.swift
//  iOS101-Prework
//
//  Created by alecx on 11/3/24.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func changeBackgroundColor(_ sender: UIButton) {
        
        func changeColor() -> UIColor{
            
            let red = CGFloat.random(in: 0...1)
            let green = CGFloat.random(in: 0...1)
            let blue = CGFloat.random(in: 0...1)
            
            return UIColor(red: red, green: green, blue: blue, alpha: 0.5)
        }
        
        let randomColor = changeColor()
        
        if switchColorMode.isOn{
            view.backgroundColor = colorPicker.selectedColor
        } else {
            view.backgroundColor = randomColor
        }

    }
    
    @IBOutlet weak var colorPicker: UIColorWell!
    
    @IBOutlet weak var switchColorMode: UISwitch!
    
}

