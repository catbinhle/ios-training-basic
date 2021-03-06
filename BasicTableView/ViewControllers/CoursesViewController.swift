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
            "Server with Nodejs",
            "DevOps",
            "Tester",
            "QA",
            "PMP",
            "Re-Dev1",
            "Re-Dev1-1",
            "Re-Dev1-2",
            "Re-Dev1-3",
            "Re-Dev2",
            "Re-Dev2-1",
            "Re-Dev2-2",
            "Re-Dev2-3",
            "Re-Dev2-4",
            "Re-Dev3",
            "Re-Dev3-1",
            "Re-Dev5"
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


