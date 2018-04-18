//
//  TableViewCell.swift
//  UICollectionViewInTableView
//
//  Created by Sundir Talari on 17/04/18.
//  Copyright © 2018 Sundir Talari. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var collectionView: UICollectionView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
extension TableViewCell
{
    
    func setCollectionViewDataSourceDelegate <D: UICollectionViewDelegate & UICollectionViewDataSource>
        (_ dataSourceDelegate: D, forRow row:Int)
    {
        collectionView.delegate = dataSourceDelegate
        collectionView.dataSource = dataSourceDelegate
        
        collectionView.reloadData()
        
    }
    
}
