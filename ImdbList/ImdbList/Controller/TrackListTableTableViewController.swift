//
//  TrackListTableTableViewController.swift
//  ImdbList
//
//  Created by parashar.r.adhikary on 03/02/2021.
//

import UIKit

class TrackListTableTableViewController: UITableViewController {
    
    var actorList = [
        "John Travolta",
        "Leonardo DiCaprio",
        "Brad Pitt",
        "David Byrne",
        "John Magaro",
        "Delroy Lindo",
        "Steven Yeun",
        "Viktoria Miroshnichenko",
        "Sidney Flanigan",
        "Jude Law",
        "Tim Robbins"]
    
    
    var movies = Movie.createMovie()
    
    
   

    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return actorList.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "trackListCell", for: indexPath)

        // Configure the cell...
        let movie = movies[indexPath.row]
        cell.textLabel?.text = movie.actor
        cell.detailTextLabel?.text = movie.film
        cell.imageView?.image = UIImage(named: movie.rating)
        return cell
    }
    
    // MARK:- Table View Delegate
    
    

    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
                return 80
    }
    


    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
        let cuurentTrack = movies.remove(at: fromIndexPath.row)
        movies.insert(cuurentTrack, at: to.row)
    }
    
    
    override func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCell.EditingStyle {
        return .none
    }

    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
   


    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let indexPath = tableView.indexPathForSelectedRow {
            print("indexpath.row :", indexPath.row)
        
        
        // Get the new view controller using segue.destination.
            let detaiVC = segue.destination as! DetailViewController
        // Pass the selected object to the new view controller.
            detaiVC.movie = movies[indexPath.row]
    }

    }
}
