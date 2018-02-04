//
//  DetailViewController.swift
//  milksAndShakes
//
//  Created by Gabriel Martinez on 2018-02-04.
//  Copyright © 2018 Gabriel Martinez. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var detailImageView: UIImageView!
    
    var sentData1 : String!
    var sentData2 : String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.title = sentData1
        
        detailImageView.image = UIImage(named: sentData2)
        
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
