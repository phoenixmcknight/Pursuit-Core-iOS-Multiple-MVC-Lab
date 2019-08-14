//
//  TableViewController.swift
//  AC-iOS-Multiple-MVC
//
//  Created by Phoenix McKnight on 8/13/19.
//  Copyright © 2019 AC-iOS. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
   
   
    var animalsData = ZooAnimal.zooAnimals
    var animals = animalFunctions()
    
    @IBOutlet var animalTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       // animalTableView.dataSource = self
        //animalTableView.delegate = self
    animals.numberOfAnimalsInClassification()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return animals.numberOfSections()
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 75
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        switch section {
        case 0:
            return animals.mammal.count
        case 1:
            return animals.birds.count
        case 2:
            return animals.reptile.count
        case 3:
            return animals.insect.count
        case 4:
            return animals.amphibian.count
        default:
            return -1
        }
    }

    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
    
        switch section {
        case 0:
        return "Mammals"
        case 1:
          return "Birds"
        case 2:
       return     "Reptile"
        case 3:
      return      "Insect"
        case 4:
            return "Amphibian"
        default:
     return "not an animal"
        }
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        

        
        
        
        
        switch indexPath.section {

        case 0:
            let cell = animalTableView.dequeueReusableCell(withIdentifier: "MVC", for: indexPath) as? MVCTableViewCell

                cell?.classification1.text = animals.mammal[indexPath.row].origin
            cell?.name1.text = animals.mammal[indexPath.row].name
            cell?.imageView?.image = UIImage(named:String(animals.mammal[indexPath.row].imageNumber))
            return cell!
        case 1:
            let cell = animalTableView.dequeueReusableCell(withIdentifier: "MVC", for: indexPath) as? MVCTableViewCell

            cell?.classification1.text = animals.birds[indexPath.row].origin
            cell?.name1.text = animals.birds[indexPath.row].name
            cell?.imageView?.image = UIImage(named:String(animals.birds[indexPath.row].imageNumber))
            return cell!

        case 2:
            let cell = animalTableView.dequeueReusableCell(withIdentifier: "MVC", for: indexPath) as? MVCTableViewCell

            cell?.classification1.text = animals.reptile[indexPath.row].origin
            cell?.name1.text = animals.reptile[indexPath.row].name
            cell?.imageView?.image = UIImage(named:String(animals.reptile[indexPath.row].imageNumber))
            return cell!
        case 3:
        let cell = animalTableView.dequeueReusableCell(withIdentifier: "MVC", for: indexPath) as? MVCTableViewCell

        cell?.classification1.text = animals.insect[indexPath.row].origin
        cell?.name1.text = animals.insect[indexPath.row].name
        cell?.imageView?.image = UIImage(named:String(animals.insect[indexPath.row].imageNumber))
            return cell!
        case 4:
            let cell = animalTableView.dequeueReusableCell(withIdentifier: "MVC", for: indexPath) as? MVCTableViewCell

            cell?.classification1.text = animals.amphibian[indexPath.row].origin
            cell?.name1.text = animals.amphibian[indexPath.row].name
            cell?.imageView?.image = UIImage(named:String(animals.amphibian[indexPath.row].imageNumber))
            return cell!
        default:
            break
            }
        return UITableViewCell()
        }

        

    
override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    //we want to move to the vc with the storyboard ID "movieDetailViewController"
    let storyBoard = UIStoryboard(name: "Main", bundle: nil)
    if let viewController = storyBoard.instantiateViewController(withIdentifier: "secondViewController") as? SecondViewController {

    
        
       
        switch indexPath.section {
        case 0:
        viewController.animal1 = animals.mammal[indexPath.row]

        case 1:
            viewController.animal1 = animals.birds[indexPath.row]

        case 2:
            viewController.animal1 = animals.reptile[indexPath.row]

        case 3:
            viewController.animal1 = animals.insect[indexPath.row]

        case 4:
            viewController.animal1 = animals.amphibian[indexPath.row]
            
            

        default:
            break
        }
    
     
        navigationController?.pushViewController(viewController, animated: true)
        
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
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


}
}

