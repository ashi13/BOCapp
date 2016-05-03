//
//  FeedTableViewController.swift
//  BOCapp
//
//  Created by Andrew Murowchick on 4/26/16.
//  Copyright © 2016 Alexander Shi. All rights reserved.
//

import UIKit

class FeedTableViewController: UITableViewController {
    
//    func getTripInfo() -> Trip? {
//        return nil
//    }
    
    var trips = [Trip]()
    
    @IBOutlet var tripTableView: UITableView!
    
    
    /* Function loads predefined trips to show in trip feed */
    func loadSampleTrips() {
        let kayakTrip = Trip(title: "Kayaking", imageName: "sea_kayak_group.jpg", leaderName: "Andrew Murowchick", leaderImageName: "murow_profile.jpg", leaderDescription: "Really cool guy!", description: "We will kayak and it will be so much fun trust us!!!")
        let kayakTrip2 = Trip(title: "Kayaking", imageName: "sea_kayak_group.jpg", leaderName: "Andrew Murowchick", leaderImageName: "murow_profile.jpg", leaderDescription: "Really cool guy!", description: "We will kayak and it will be so much fun trust us!!!")
        
        
        trips += [kayakTrip, kayakTrip2]
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tripTableView.dataSource = self
        tripTableView.delegate = self
        
        // Load sample data
        loadSampleTrips()
        
        

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return trips.count
        
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let tableViewCellIdentifier = "TripTableViewCell"
        
        let cell = tableView.dequeueReusableCellWithIdentifier(tableViewCellIdentifier, forIndexPath: indexPath) as! TripTableViewCell

        // Configure the cell...
        
        let trip = trips[indexPath.row]
        
        cell.tripName.text = trip.title
        

        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
