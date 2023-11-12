//
//  SegueViewController.swift
//  communicationTypesVC
//
//  Created by Madhav Kure on 10/31/23.
//

import UIKit

class SegueViewController: UIViewController {
    
    var segueData : String?
    
    @IBOutlet weak var segueLabel: UILabel!
    
    var callback: ((String) -> Void)?
    
    // Define identifier
    let notificationName = Notification.Name("NotificationIdentifier")
    
    override func viewDidLoad() {
        super.viewDidLoad()

        segueLabel.text = segueData
        // Do any additional setup after loading the view.
       // self.navigationController!.popToRootViewController(animated: true)
        // Post notification
        //NotificationCenter.default.post(name: notificationName, object: nil)
     
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        
        let destVC = segue.destination as! ViewController
        destVC.unwindSegueData = "Back from Unwind Segue"
//        destVC.btnPerformSegue.setTitle(, for: .normal)
    }
}
