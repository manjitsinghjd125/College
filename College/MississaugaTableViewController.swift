//
//  MississaugaTableViewController.swift
//  College
//
//  Created by Manjit Singh on 12/11/17.
//  Copyright © 2017 Manjit Singh. All rights reserved.
//

import UIKit

class MississaugaTableViewController:  UIViewController, UITableViewDataSource, UITableViewDelegate{

    @IBOutlet weak var tableviewmain: UITableView!
    var selectedcourse : String = ""
    var selectedseats : Int = 0
    var index : NSIndexPath!
    
    
    static var courses: [String] = ["Advanced Project Management & Strategic Leadership","Big Data - Science & Informatics","Business Management - International Business","Computer Programmer","Cyber Security & Computer Forensics","International Business","Web Design & Development","Wireless Networking"]
    static var seatsavaliable: [Int] = [30,40,50,45,25,36,45,55]
    
    // var data :[Sarnia] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Select Program"
        tableviewmain.delegate = self
        tableviewmain.dataSource = self
        
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
        
    }
    
    override func viewWillAppear(_ animated: Bool)
    {
        print("After Count \(MississaugaTableViewController.courses.count) \(MississaugaTableViewController.seatsavaliable.count) ")
        DispatchQueue.main.async{
            self.tableviewmain.reloadData()
        }
    }
    
    // MARK: - Table view data source
    //
    //     func numberOfSections(in tableView: UITableView) -> Int {
    //        return 1
    //    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return MississaugaTableViewController.courses.count
        
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "mississaugatable", for: indexPath) as? MisssissaugaTableViewCell
        {
            
            cell.course_name.text = MississaugaTableViewController.courses[indexPath.row]
            cell.seats.text = String(MississaugaTableViewController.seatsavaliable[indexPath.row])
            
            
            return cell
        }
        else{
            fatalError("The dequeued cell is not an instance of RestaurantTableViewCell.")
        }
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    {
        
        tableView.deselectRow(at: indexPath, animated: true)
        selectedcourse = MississaugaTableViewController.courses[indexPath.row]
        selectedseats = MississaugaTableViewController.seatsavaliable[indexPath.row]
        index = indexPath as NSIndexPath
        self.performSegue(withIdentifier: "detailview", sender: self)
    }
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat
    {
        return 60.0
    }
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)//Segue to send data to CheckResultView view controller.
    {
        if (segue.identifier == "detailview")
        {
            let detailView =  segue.destination as! MississaugaViewController
            
            detailView.Name = selectedcourse
            detailView.seats = selectedseats
            //detailView.halloweenHomes = selectedHomeImage
            detailView.index = index
        }
        
    }
    
    //    override func prepare(for segue: UIStoryboardSegue, sender: (Any)?) {
    //         if (segue.identifier == "detailview") {
    //        let Sarniadetailview = segue.destination as! SarniaViewController
    //        Sarniadetailview.Name = selectedcourse
    //        Sarniadetailview.seats = selectedseats
    //        Sarniadetailview.index = index
    //            print("selected values are \(selectedcourse) seats \(selectedseats) index \(index)")
    //
    //        }
    //          }
    

}
