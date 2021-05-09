//
//  ViewController.swift
//  iOSTest
//
//  Created by Андрей Антонов on 04/05/2021.
//  Copyright © 2021 Андрей Антонов. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var TextField1: UITextField!
    @IBOutlet weak var Button1: UIButton!
    @IBOutlet weak var Label1: UILabel!
    var searchService: SearchService!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.searchService = SearchService()
        // Do any additional setup after loading the view.
    }

    @IBAction func OnSubmitButton1(_ sender: Any) {
        let value = TextField1.text ?? ""
        let result = self.searchService.search(by: value)
        Label1.text = result.joined(separator: ",\n")
    }
    
}

