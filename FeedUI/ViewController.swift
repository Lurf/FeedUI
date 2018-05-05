//
//  ViewController.swift
//  FeedUI
//
//  Created by Lurf on 2018/05/04.
//  Copyright © 2018 Lurf. All rights reserved.
//

import UIKit
import IGListKit

class ViewController: UIViewController, ListAdapterDataSource {
    
    let users = [
        User(id: 1, name: "Akasa"),
        User(id: 2, name: "Tanaha"),
        User(id: 3, name: "Mayara"),
        User(id: 4, name: "Akasa2"),
        User(id: 5, name: "Tanaha2"),
        User(id: 6, name: "Mayara2"),
        User(id: 7, name: "Akasa3"),
        User(id: 8, name: "Tanaha3"),
        User(id: 9, name: "Mayara3"),
    ]
    
    func objects(for listAdapter: ListAdapter) -> [ListDiffable] {
        return users
    }
    
    func listAdapter(_ listAdapter: ListAdapter, sectionControllerFor object: Any) -> ListSectionController {
        return SectionController()
    }
    
    func emptyView(for listAdapter: ListAdapter) -> UIView? {
        return nil
    }
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    var adapter: ListAdapter?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        adapter = ListAdapter(updater: ListAdapterUpdater(), viewController: self, workingRangeSize: 1)
        adapter?.collectionView = collectionView
        adapter?.dataSource = self
    }
    
}

