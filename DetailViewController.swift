//
//  DetailViewController.swift
//  tableView
//
//  Created by Mounika Kasaraneni on 07/05/2018.
//  Copyright © 2018 epita. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    var  movie : Actors?
   // var getImage = UIImage!
    
    @IBOutlet weak var textarea1: UITextView!
    @IBOutlet weak var img1: UIImageView!
    @IBOutlet weak var l1: UILabel!
    @IBOutlet weak var l2: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        l1.text = movie?.name
        l2.text = movie?.charname
        textarea1.text = movie?.description
        let image = UIImage(named: (movie?.img)!)
        img1.image = image
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
