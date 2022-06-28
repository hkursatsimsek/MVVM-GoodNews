//
//  NewsListTableViewController.swift
//  MVVM-GoodNews
//
//  Created by Kürşat Şimşek on 28.06.2022.
//

import Foundation
import UIKit

class NewsListTableViewController : UITableViewController {
        
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUI()
    }
    
    private func setupUI() {
        
        self.navigationController?.navigationBar.prefersLargeTitles = true
        
    }
    
}
