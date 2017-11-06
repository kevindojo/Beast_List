//
//  ViewController.swift
//  Beast List
//
//  Created by Kevin Pham on 11/6/17.
//  Copyright © 2017 Kevin Pham. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var tasks = [String]()
    
    @IBOutlet weak var taskTextField: UITextField!
    @IBOutlet weak var tableView: UITableView!
    
    @IBAction func beatButtonPressed(_ sender: UIButton) {
        
        if (taskTextField.text != "")
        {
            tasks.append(taskTextField.text!)
            
            taskTextField.text = " "
            print (tasks)
            tableView.reloadData()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self


        // Do any additional setup after loading the view, typically from a nib.
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

extension ViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return (tasks.count)
    }
    

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyCell", for: indexPath)
        cell.textLabel?.text = tasks[indexPath.row]
        return cell
    }
}
    

















