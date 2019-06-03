//
//  SarniaViewController.swift
//  College
//
//  Created by Manjit Singh on 12/11/17.
//  Copyright © 2017 Manjit Singh. All rights reserved.
//
import Foundation
import UIKit

class SarniaViewController: UIViewController , UITextFieldDelegate {
   
    var Name : String = ""
    var seats: Int = 0
    var index : NSIndexPath!
    var userid : String = ""
    var password: String = ""

    @IBOutlet weak var programname: UILabel!
    
    @IBOutlet weak var remainingseats: UILabel!
    @IBOutlet weak var UserName: UITextField!
    @IBOutlet weak var address: UITextView!
    @IBOutlet weak var Country: UITextField!
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var contact: UITextField!
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Addmission Details"
        misc()
       //programname.delegate = self
      //  noofseats.delegate = self
        // Do any additional setup after loading the view.
    }

    func misc(){
    remainingseats.text = String(seats)
    programname.text =  Name
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    @IBAction func submit(_ sender: Any) {
        self.view.endEditing(true)
        
        if(UserName.text?.isEmpty == false || UserName.text?.isEmpty == false)
        {
            let alertController = UIAlertController(title: "myLamton", message: "Do you really want to submit?", preferredStyle: UIAlertControllerStyle.alert)
            
            alertController.addAction(UIAlertAction(title: "Yes", style: UIAlertActionStyle.destructive) {
                (result : UIAlertAction) -> Void in
                
                SarniaTableViewController.courses[self.index.row] = self.programname.text!
                SarniaTableViewController.seatsavaliable[self.index.row] = ( Int(self.remainingseats.text!)! - 1)
                self.userid = self.email.text!
                self.password = self.contact.text!
                self.performSegue(withIdentifier: "end", sender: self)
                //self.navigationController?.popViewController(animated: true)
            })
            alertController.addAction(UIAlertAction(title: "No", style: UIAlertActionStyle.default))
            
            self.present(alertController, animated: true, completion: nil)
        }
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)//Segue to send data to CheckResultView view controller.
    {
        if (segue.identifier == "end")
        {
            let detailView =  segue.destination as! Sarniadetailaddmission
            
            detailView.username = userid
            detailView.password = password
            //detailView.halloweenHomes = selectedHomeImage
            //detailView.index = index
        }
        
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
