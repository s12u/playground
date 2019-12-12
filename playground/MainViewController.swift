//
//  ViewController.swift
//  playground
//
//  Created by su on 2019/12/11.
//  Copyright © 2019 su. All rights reserved.
//

import UIKit
import SnapKit
import XCoordinator

class MainViewController: UIViewController {

    var router: UnownedRouter<MainRoute>?
    var rootView: UIView!
    var mButton = UIButton()

    init(router: UnownedRouter<MainRoute>) {
        super.init(nibName: nil, bundle: nil)
        self.router = router
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.router = nil
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print("main loaded! : router initialized: \(router != nil)")
        self.initUI()
    }

}

extension MainViewController {
    fileprivate func initUI () {
        rootView = {
            let rootView = UIView()
            view.addSubview(rootView)
            rootView.snp.makeConstraints { (make) in
                make.size.equalToSuperview()
                make.edges.equalToSuperview()
            }
            return rootView
        } ()
    
        rootView.addSubview(mButton)
        mButton.setTitle("navigate", for: .normal)
        mButton.addTarget(self, action: #selector(moveToListScene), for: .touchUpInside)
        mButton.snp.makeConstraints { (make) in
            make.center.equalToSuperview()
        }
    }
    
    @objc
    func moveToListScene() {
        router?.trigger(.list)
    }
}

