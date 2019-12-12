//
//  TableViewCell.swift
//  playground
//
//  Created by su on 2019/12/12.
//  Copyright © 2019 su. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    var dataLabel: UILabel!
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.setConstraint()
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }
    
    func setConstraint() {
        dataLabel = {
            let label = UILabel()
            contentView.addSubview(label)
            label.snp.makeConstraints { (make) in
                make.center.equalToSuperview()
            }
            return label
        } ()
    }
    
    func bindData(data: TableViewData) {
        dataLabel?.text = data.data
    }
    
}
