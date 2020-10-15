//
//  ViewController.swift
//  BinaryCounter
//
//  Created by Dathan Wong on 10/15/20.
//  Copyright © 2020 Dathan Wong. All rights reserved.
//

import UIKit

class ViewController: UIViewController, MyCellDelegate {
    
    

    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var sumLabel: UILabel!
    var numbers = [Int](repeating: 10, count: 16)
    var sum = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        for i in 0..<numbers.count{
            numbers[i] = Int(pow(10.0, Double(i)))
        }
        // Do any additional setup after loading the view.
        tableView.dataSource = self
        sumLabel.text = "Total: \(String(sum))"
    }
    
    func addValue(value: Int) {
        sum += value
        sumLabel.text = "Total: \(String(sum))"
    }
    
    func subValue(value: Int) {
        sum -= value
        sumLabel.text = "Total: \(String(sum))"
    }

}

extension ViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return numbers.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyCell", for: indexPath) as! TableViewCell
        cell.numberLabel.text = String(numbers[indexPath.row])
        cell.delegate = self
        return cell
    }
    
    
}
