//
//  MasterViewController.swift
//  test
//
//  Created by Daniel Klink on 17.04.19.
//  Copyright © 2019 Daniel Klink. All rights reserved.
//

import UIKit

class MasterViewController: UIViewController {


    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        self.navigationController?.setNavigationBarHidden(true, animated: true)
    }
    
    @IBAction func buttonClicked(){
        
        if let vc = storyboard?.instantiateViewController(withIdentifier: "detailVC"){
          
            self.navigationController?.pushViewController(vc, animated: true)
        }
    }
}

