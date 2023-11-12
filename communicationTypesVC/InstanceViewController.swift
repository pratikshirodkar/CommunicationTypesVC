//
//  InstanceViewController.swift
//  communicationTypesVC
//
//  Created by Madhav Kure on 10/31/23.
//

import UIKit

class InstanceViewController: UIViewController {
    @IBOutlet weak var instanceLabel: UILabel!
    
    var name: String = "ABC"
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        instanceLabel.text = name
        print("name:",name)
        
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
