//
//  PVStoreOwnerHomeVC.swift
//  PitchVenture
//
//  Created by Harshit on 18/11/21.
//  Copyright © 2021 PitchVenture. All rights reserved.
//

import UIKit

class PVStoreOwnerHomeVC: PVBaseVC {

    //MARK: - Outlets
    @IBOutlet weak var tableView: UITableView!
    
    //MARK: - Class Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        self.registerTableViewCell()
    }
    
    class func instantiate() -> PVStoreOwnerHomeVC {
        return UIStoryboard.main().instantiateViewController(withIdentifier: PVStoreOwnerHomeVC.identifier()) as! PVStoreOwnerHomeVC
    }
    
    func registerTableViewCell() {
        tableView.register(UINib(nibName: "PVHomeTableViewCell", bundle: nil), forCellReuseIdentifier: PVHomeTableViewCell.reuseIdentifier())
    }
}
