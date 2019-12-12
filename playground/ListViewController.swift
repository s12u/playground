//
//  ListViewController.swift
//  playground
//
//  Created by su on 2019/12/12.
//  Copyright © 2019 su. All rights reserved.
//

import UIKit
import SnapKit
import XCoordinator

class ListViewController: UIViewController {

    var router: UnownedRouter<MainRoute>?

    init(router: UnownedRouter<MainRoute>) {
        self.router = router
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.router = nil
    }
    
    let tableView = UITableView()
    
    var viewModel = ListViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(TableViewCell.self, forCellReuseIdentifier: "tableViewCell")
        // Do any additional setup after loading the view.
        
        initUI()
    }

    fileprivate func initUI() {
        view.addSubview(self.tableView)
        
        tableView.snp.makeConstraints { (make) in
            make.leading.equalToSuperview()
            make.trailing.equalToSuperview()
            make.top.equalToSuperview()
            make.bottom.equalToSuperview()
        }
    }
}


extension ListViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.listData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let data = viewModel.listData[indexPath.row] as TableViewData
        let cell = tableView.dequeueReusableCell(withIdentifier: "tableViewCell") as! TableViewCell
        cell.bindData(data: data)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 90.0
    }
    
}
