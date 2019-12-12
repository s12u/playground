//
//  DataModel.swift
//  playground
//
//  Created by su on 2019/12/12.
//  Copyright © 2019 su. All rights reserved.
//

import UIKit

class DataModel: NSObject {
    
    func getAllData() -> [TableViewData] {
        return [TableViewData(data: "test 1"), TableViewData(data: "test 2")]
    }
}
