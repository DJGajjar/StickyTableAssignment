//
//  PopularListCell.swift
//  StickyTableAssignment
//
//  Created by Darshan Jolapara on 17/05/22.
//

import UIKit

class PopularListCell: UITableViewCell {

    //MARK:- Outlet
    @IBOutlet weak var View1: UIView!
    @IBOutlet weak var View2: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        //MARK:- View Design Set
        View1.layer.cornerRadius = 10.0
        View1.layer.borderWidth = 1.0
        View1.layer.borderColor = UIColor.lightGray.cgColor
        
        View2.layer.cornerRadius = 10.0
        View2.layer.borderWidth = 1.0
        View2.layer.borderColor = UIColor.lightGray.cgColor
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
}
