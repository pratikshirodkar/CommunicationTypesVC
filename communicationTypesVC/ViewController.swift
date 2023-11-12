//
//  ViewController.swift
//  communicationTypesVC
//
//  Created by Madhav Kure on 10/31/23.
//

import UIKit
import MessageUI

class ViewController: UIViewController,MFMailComposeViewControllerDelegate,ProtocolFile {
    func passData() {
        print("ProtocolFile")
        var a = Int()
        var b = Int()
        var c = a * b
    }
    
    
    
    var unwindSegueData = String()
    
    @IBOutlet weak var btnPerformSegue: UIButton!
    
    @IBOutlet weak var btnInstanceProperty: UIButton!
    
    
    // Define identifier
    let notificationName = Notification.Name("NotificationIdentifier")

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // Register to receive notification
        NotificationCenter.default.addObserver(self, selector: #selector(methodOfReceivedNotification), name: notificationName, object: nil)

//        btnPerformSegue.setTitle(unwindSegueData, for: .normal)
    }
    
    
        
    
    @objc func methodOfReceivedNotification(Data:String) -> Void {
            
        btnPerformSegue.setTitle(Data, for: .normal)
        
    }
    
    @IBAction func PerformSegue(_ sender: Any) {
        
        //self .sendEmail()
        performSegue(withIdentifier: "SegueView", sender: nil)
    }
        
    @IBAction func PerformInstance(_ sender: Any) {
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let newVc = storyboard.instantiateViewController(withIdentifier: "InstanceViewController") as! InstanceViewController
        var vcArray = self.navigationController?.viewControllers
        vcArray!.removeLast()
        vcArray!.append(newVc)
        newVc.name = "Instance Variable"
        self.navigationController?.setViewControllers(vcArray!, animated: false)
     
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "SegueView" {
            guard let vc = segue.destination as? SegueViewController else { return }
            vc.segueData = "Segue Data"
        }
    }

    
    @IBAction func PerformPush(_ sender: Any) {
     
        if let destinationVC = storyboard?.instantiateViewController(withIdentifier: "DestinationView") as? DestinationViewController {
            print("anything")
            
            destinationVC.label1 = "7"
            destinationVC.label2 = "8"
            destinationVC.label3 = "9"
            destinationVC.label4 = "10"
            destinationVC.label5 = "11"
            destinationVC.label6 = "12"
            destinationVC.label7 = "13"
            
            navigationController?.pushViewController(destinationVC, animated: true)
        }

            // SourceViewController.swift
//            if let destinationVC = storyboard?.instantiateViewController(withIdentifier: "DestinationViewController") as? DestinationViewController
                
//                DestinationViewController {
//                destinationVC.callback = { data in
//                    // Handle the passed data
//                }
//                navigationController?.pushViewController(destinationVC, animated: true)
//            }
        
    }
    
    @IBAction func unwindToViewController(_ sender: UIStoryboardSegue){
//        btnPerformSegue.setTitle(unwindSegueData, for: .normal)
        
        print("unwindSegueData",unwindSegueData)
        btnPerformSegue.setTitle(unwindSegueData, for: .normal)
    }
    
    
    
    func sendEmail() {
        if MFMailComposeViewController.canSendMail() {
            let mail = MFMailComposeViewController()
            mail.mailComposeDelegate = self
            mail.setToRecipients(["you@yoursite.com"])
            mail.setMessageBody("<p>You're so awesome!</p>", isHTML: true)
            
            present(mail, animated: true)
        } else {
            // show failure alert
        }
    }
    
    func mailComposeController(_ controller: MFMailComposeViewController, didFinishWith result: MFMailComposeResult, error: Error?) {
        controller.dismiss(animated: true)
    }
    
}

