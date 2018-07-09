//
//  DetailViewController.swift
//  Assignment Notebook
//
//  Created by Aslan Lee on 7/9/18.
//  Copyright © 2018 Aslan Lee. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var nameOfAssignmentTextField: UITextField!
    @IBOutlet weak var dueDateTextField: UITextField!
    @IBOutlet weak var subjectTextField: UITextField!
    
    var detailItem: Assignments? {
        didSet {
            configureView()
    }
}

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        configureView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func configureView() {
        if let nameAssignment = self.detailItem {
            if nameOfAssignmentTextField != nil {
                subjectTextField.text = nameAssignment.className
                nameOfAssignmentTextField.text = nameAssignment.homeworkName
                dueDateTextField.text = nameAssignment.date
            }
        }
    }

}

