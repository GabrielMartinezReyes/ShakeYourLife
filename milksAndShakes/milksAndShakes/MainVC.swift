//
//  ViewController.swift
//  milksAndShakes
//
//  Created by Gabriel Martinez on 2018-02-04.
//  Copyright © 2018 Gabriel Martinez. All rights reserved.
//

import UIKit

class MainVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    

    @IBOutlet weak var tableview: UITableView!
    
    let frukter = ["Ananas", "Banan", "Blabar", "Choklad", "Hallon", "Jordgubbar", "Mango", "Persika" ]
    let fruktTitle = ["Ananas", "Banan", "Blabar", "Choklad", "Hallon", "Jordgubbar", "Mango", "Persika"]
    let receptImage = ["ananas-1", "banan-1", "blabar-1", "choklad-1", "hallon-1", "jordgubbar-1", "mango-1", "persika-1"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableview.delegate = self
        tableview.dataSource = self
        
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
        // Do any additional setup after loading the view, typically from a nib.
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return frukter.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableview.dequeueReusableCell(withIdentifier: "fruktCell") as! FruktTableViewCell
        
        cell.cellView.layer.cornerRadius = cell.cellView.frame.height / 2
        cell.fruktLabel.text = frukter[indexPath.row]
        
        cell.fruktImage.image = UIImage(named: frukter[indexPath.row])
        cell.fruktImage.layer.cornerRadius = cell.fruktImage.frame.height / 2
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "detailSegue" {
            let dvc = segue.destination as! DetailViewController
            
            if let indexPath = self.tableview.indexPathForSelectedRow {
                dvc.sentData1 = fruktTitle[indexPath.row] as String
                dvc.sentData2 = receptImage[indexPath.row] as String
            }
            
            
        }
    }

}

