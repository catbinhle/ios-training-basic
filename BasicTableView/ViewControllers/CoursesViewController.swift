//
//  CoursesViewController.swift
//  BasicTableView
//
//  Created by PSY MAC on 8/23/20.
//  Copyright © 2020 Cat Binh Le. All rights reserved.
//

import Foundation
import UIKit

class CoursesViewController: UIViewController {
    
    @IBOutlet weak var coursesTableView: UITableView!
    var courseList: [String]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        courseList = [
            "Java Basic",
            "iOS Basic",
            "Android Basic",
            "JavaScript Basic",
            "Server with Nodejs"
        ]
    }

}

extension CoursesViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return courseList!.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CoursesCell", for: indexPath)
        cell.textLabel?.text = courseList[indexPath.item]
        cell.imageView?.image = UIImage(named: "Logo")
        return cell
    }
    
}

extension CoursesViewController: UITableViewDelegate {
    
}


