//
//  SecondViewController.swift
//  AC-iOS-Multiple-MVC
//
//  Created by Phoenix McKnight on 8/13/19.
//  Copyright © 2019 AC-iOS. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
   
    
    @IBOutlet weak var name2: UILabel!
    @IBOutlet weak var imageview2: UIImageView!
    @IBOutlet weak var textViewOne: UITextView!
    var animal1:ZooAnimal!
    func setUpViews() {
        name2.text = animal1.name
        imageview2.image = UIImage(named:String(animal1.imageNumber))
        textViewOne.text = animal1.info
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpViews()
        // Do any additional setup after loading the view.
    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}
