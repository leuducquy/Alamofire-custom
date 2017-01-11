//
//  DetailViewController.swift
//  AlamofireCustom
//
//  Created by Quy on 1/11/17.
//  Copyright © 2017 Quy. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
 let kAlamofireTableViewCell = "AlamofireTableViewCell"
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.register(UINib.init(nibName: kAlamofireTableViewCell, bundle: nil), forCellReuseIdentifier: kAlamofireTableViewCell)
        
        // Do any additional setup after loading the view.
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell : AlamofireTableViewCell = tableView.dequeueReusableCell(withIdentifier: kAlamofireTableViewCell) as? AlamofireTableViewCell else{
           return UITableViewCell()
        }
        return cell;
      
        
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
