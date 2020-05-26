//
//  ViewController.swift
//  DroitDeVoteSwift
//
//  Created by lpiem on 17/10/2019.
//  Copyright © 2019 lpiem. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var lblVote: UILabel!
    @IBOutlet weak var lblAge: UILabel!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.person = Person(age: 20)
    }

    @IBAction func sliderChange(_ slider: UISlider) {
        self.person.age = UInt8(round(slider.value / 5) * 5)
        slider.value = Float(self.person.age)
        lblAge.text = "\(self.person.age)"
        lblVote.text = self.person.canLegallyVote() ? "Droit de vote : oui" : "Doit de vote : non"
        
    }
}

