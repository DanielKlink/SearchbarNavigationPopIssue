//
//  DetailViewController.swift
//  test
//
//  Created by Daniel Klink on 17.04.19.
//  Copyright © 2019 Daniel Klink. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    var searchController : UISearchController?

    override func viewDidLoad() {
        super.viewDidLoad()

        searchController = UISearchController(searchResultsController: nil)
        //searchController?.searchResultsUpdater = self
        searchController?.hidesNavigationBarDuringPresentation = false
        searchController?.obscuresBackgroundDuringPresentation = false
        searchController?.searchBar.tintColor = UIColor(named: "DarkGreyColor")
        searchController?.searchBar.placeholder = NSLocalizedString("Search", comment: "")
        navigationItem.searchController = searchController
        
        extendedLayoutIncludesOpaqueBars = true
        definesPresentationContext = false
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        self.navigationController?.setNavigationBarHidden(false, animated: true)
    }
}


