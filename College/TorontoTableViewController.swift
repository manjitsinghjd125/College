//
//  TorontoTableViewController.swift
//  College
//
//  Created by Manjit Singh on 12/11/17.
//  Copyright © 2017 Manjit Singh. All rights reserved.
//

import UIKit

class TorontoTableViewController:  UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableviewmain: UITableView!
    var selectedcourse : String = ""
    var selectedseats : Int = 0
    var index : NSIndexPath!
    
    
    static var courses: [String] = ["Advanced Health Care Leadership","Business Management","Chemical Laboratory Analysis","Cloud Computing for Big Data","Computer Programmer","Embedded Systems Engineering Design","Mobile Application Design & Development","Occupational Health & Safety Management","Quality Engineering Management","Supply Chain Management"]
    static var seatsavaliable: [Int] = [30,40,50,45,40,45,40,60,48,36]
    
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
        print("After Count \(TorontoTableViewController.courses.count) \(TorontoTableViewController.seatsavaliable.count) ")
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
        
        return TorontoTableViewController.courses.count
        
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "torontotable", for: indexPath) as? TorontoTableViewCell
        {
            
            cell.course_name.text = TorontoTableViewController.courses[indexPath.row]
            cell.seats.text = String(TorontoTableViewController.seatsavaliable[indexPath.row])
            
            
            return cell
        }
        else{
            fatalError("The dequeued cell is not an instance of RestaurantTableViewCell.")
        }
    }
     func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    {
        
        tableView.deselectRow(at: indexPath, animated: true)
        selectedcourse = TorontoTableViewController.courses[indexPath.row]
        selectedseats = TorontoTableViewController.seatsavaliable[indexPath.row]
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
            let detailView =  segue.destination as! TorontoViewController
            
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
