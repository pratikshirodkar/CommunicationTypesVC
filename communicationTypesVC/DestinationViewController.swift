//
//  DestinationViewController.swift
//  communicationTypesVC
//
//  Created by Pratik Shirodkar on 11/3/23.
//

import UIKit

class DestinationViewController: UIViewController {
    
    var label1 = String()
    var label2 = String()
    var label3 = String()
    var label4 = String()
    var label5 = String()
    var label6 = String()
    var label7 = String()
    
    
    @IBOutlet weak var Lbl1: UILabel!
    @IBOutlet weak var Lbl2: UILabel!
    @IBOutlet weak var Lbl3: UILabel!
    @IBOutlet weak var Lbl4: UILabel!
    @IBOutlet weak var Lbl5: UILabel!
    @IBOutlet weak var Lbl6: UILabel!
    @IBOutlet weak var Lbl7: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        Lbl1.text = label1
        Lbl2.text = label2
        Lbl3.text = label3
        Lbl4.text = label4
        Lbl5.text = label5
        Lbl6.text = label6
        Lbl7.text = label7
        
    }
}
