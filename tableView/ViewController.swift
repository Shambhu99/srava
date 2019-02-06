//
//  ViewController.swift
//  tableView
//
//  Created by brn.developers on 29/01/19.
//  Copyright © 2019 brn.developers. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate{
 

   
    var imgArry = [#imageLiteral(resourceName: "elephant"),#imageLiteral(resourceName: "goat"),#imageLiteral(resourceName: "cow"),#imageLiteral(resourceName: "tiger")]
     
    var animalArr = ["cow","Goat","Elephant","Tiger"]
    
    
    
   

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return animalArr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! MyTableViewCell
       // cell.textLabel?.text = animalArr[indexPath.row]
        cell.myImage.image = imgArry[indexPath.row]
        cell.MyLabel.text = animalArr[indexPath.row]
        
        
        return cell
    }
    

}

