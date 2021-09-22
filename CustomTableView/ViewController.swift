//
//  ViewController.swift
//  CustomTableView
//
//  Created by Anjali Chitkara on 9/16/21.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource, UITableViewDelegate {
    @IBOutlet weak var tblView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tblView.delegate = self
        tblView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TabTableViewCell
        cell.imageView?.image = UIImage(named: "Seattle\(indexPath.row+1)")
        cell.lbl.text = "Seattle\(indexPath.row)"
        return cell
    }


}

