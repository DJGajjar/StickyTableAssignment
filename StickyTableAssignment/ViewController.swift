//
//  ViewController.swift
//  StickyTableAssignment
//
//  Created by Darshan Jolapara on 17/05/22.
//

import UIKit

class ViewController: UIViewController {

    //MARK:- Outlet
    @IBOutlet weak var tblPopularList: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //MAKR: - Tableview Header and Cell Register
        self.tblPopularList.register(UINib(nibName: "PopularHeaderView", bundle: nil), forCellReuseIdentifier: "PopularHeaderView")
        self.tblPopularList.register(UINib(nibName: "PopularListCell", bundle: nil), forCellReuseIdentifier: "PopularListCell")
        
        //MAKR: - Version Related Padding
        if #available(iOS 14.6, *) {
            self.tblPopularList.sectionHeaderTopPadding = 0.0
        }
    }
}

//MAKR: - TableView Delegate And DataSource Method

extension ViewController : UITableViewDelegate, UITableViewDataSource {
             
    func numberOfSections(in tableView: UITableView) -> Int {
        return 10
    }
    
    //MAKR: - TableView Header View And Height Method
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let popularHeaderView = tableView.dequeueReusableCell(withIdentifier: "PopularHeaderView") as! PopularHeaderView
        popularHeaderView.selectionStyle = .none
        popularHeaderView.lblSection.text = String(format: "Section %d", section + 1)
        return popularHeaderView
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 44
    }
    
    //MAKR: - TableView Cell Height And Cell Design Mehtod
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell:PopularListCell = self.tblPopularList.dequeueReusableCell(withIdentifier: "PopularListCell") as! PopularListCell
        
        if indexPath.row % 2 != 0 {
            cell.View2.isHidden = true
        }else {
            cell.View2.isHidden = false
        }
        
        return cell
    }
        
    //MAKR: - TableView Footer View And Height Method
    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        let popularHeaderView = tableView.dequeueReusableCell(withIdentifier: "PopularHeaderView") as! PopularHeaderView
        popularHeaderView.selectionStyle = .none
        popularHeaderView.backgroundColor = UIColor.clear
        popularHeaderView.lblSection.text = ""
        
        return popularHeaderView
    }
    
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 10
    }
    
    //MAKR: - TableView Cell Did Select Method
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("ClickCell")
    }
}
