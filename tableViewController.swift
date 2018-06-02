//
//  File.swift
//  tableView
//
//  Created by Mounika Kasaraneni on 02/06/2018.
//  Copyright © 2018 epita. All rights reserved.
//

import UIKit

class tableViewController: UITableViewController {
    
    
    
    @IBOutlet weak var myTableView: UITableView!
    
    var arr2 : [Actors] = []
    
    // @IBOutlet weak var b1: UILabel!
    
    // @IBOutlet weak var by: UILabel!
    
    // @IBOutlet weak var ba: UILabel!
    var images = [UIImage(named:"Harry Potter"),UIImage(named: "Ron Weasley"),UIImage(named:"Hermone Granger"),UIImage(named: "Tom Felton")]
    var clickedIndex : IndexPath?
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        arr2.append(Actors(name: "Daniel Radcliffe", charname: "Harry Potter", house: "Gryffindor", description: "Daniel Radcliffe played the title role in these movies. He lives in NewYork,United States and was born on 23rd July 1989 in London. He started acting when he was 10 years old in the year 1999", img: "Harry Potter"))
        arr2.append(Actors(name: "Rupert Grint", charname: "Ron Weasley", house : "Gryffindor", description : "Rupert Grint played the role of harry potter's friend as Ron Weasley. He lives in Essex, England and was born on 24th august 1988. He started acting in the year 2000", img: "Ron Weasley"))
        arr2.append(Actors(name: "Emma Watson", charname: "Hermoine Granger", house: "Gryffindor", description: "Emma Watson played the role of harry potter's friend and Ron Weasley's Wife. She lives in London,United Kingdom and was born on 15th April 1990. She started acting in the year 1999", img: "Hermoine Granger"))
        arr2.append(Actors(name: "Tom Felton", charname: "Draco Malfoy", house: "Slytherin", description: "Tom Felton played the role as Draco Malfoy as the son of Scorpius Hyperian Malfoy and as the opposite house Wizard. He lives in surrey,England and was born on 22nd September 1987. He started acting in the year 1997 ", img: "Draco Malfoy"))
        
        printToConsole(myTableView, withString: "test string")
        
        /* var book = Books()
         book.title = "BookName"
         guard let t = book.title else {
         return
         }
         print("\(t)")
         // print("\(book.title)")
         */
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return arr2.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath) as! movieTableViewCell
        cell.lab1?.text = arr2[indexPath.row].name
        cell.lab2?.text = arr2[indexPath.row].house
        cell.lab3.text = arr2[indexPath.row].charname
        let str = arr2[indexPath.row].img
        if let image = UIImage(named:str!){
            cell.img.image = image
        }
        
        // cell.
        
        
        return cell
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        clickedIndex = indexPath
        self.performSegue(withIdentifier: "link", sender: self)
    } // to triger the link
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let moviedetailVC = segue.destination as! DetailViewController
        moviedetailVC.movie = arr2[clickedIndex!.row]
        // moviedetailVC.getImage = UIImage(named: images[indexPath.row])
        
    }
    // to send the data
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    func printToConsole(_ tableView: UITableView, withString a: String) {
        print("\(tableView) - \(a)")
    }
    
    
    /*
     // Override to support conditional editing of the table view.
     override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
     // Return false if you do not want the specified item to be editable.
     return true
     }
     */
    
    /*
     // Override to support editing the table view.
     override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
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
    
    /*
     // Override to support conditional rearranging of the table view.
     override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
     // Return false if you do not want the item to be re-orderable.
     return true
     }
     */
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
}
