//
//  ViewController.swift
//  test12
//
//  Created by დავით შავთვალიშვილი on 01.07.22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label1: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    func trueRandomColor() -> UIColor {
        UIColor(red: .random(in: 0...1), green: .random(in: 0...1), blue: .random(in: 0...1), alpha: 1.0)
    }
    func randomColor() -> UIColor {
        let colors: [UIColor] = [.red, .blue, . green]
        return colors.randomElement() ?? .brown
    }
    func checkColors() {
        if label1.backgroundColor == view.backgroundColor {
            label1.text = "colors are thesame"
        } else { label1.text = "colors are different" }
    }
    
    @IBAction func changeBackground(_ sender: Any) {
        self.view.backgroundColor = randomColor()
        checkColors()
        
    }
    @IBAction func changeLabelBackground(_ sender: Any) {
        label1.backgroundColor = randomColor()
        checkColors()
    }
}

