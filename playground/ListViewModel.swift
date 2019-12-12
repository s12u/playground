//
//  ListViewModel.swift
//  playground
//
//  Created by su on 2019/12/12.
//  Copyright © 2019 su. All rights reserved.
//

import UIKit

class ListViewModel: NSObject {

    var dataModel = DataModel()
    var listData = [TableViewData]()
    
    override init() {
        listData.append(contentsOf: dataModel.getAllData())
    }
    
}
