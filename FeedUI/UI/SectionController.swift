//
//  SectionController.swift
//  FeedUI
//
//  Created by Lurf on 2018/05/05.
//  Copyright © 2018 Lurf. All rights reserved.
//

import IGListKit

class SectionController: ListSectionController, ListDisplayDelegate {
    
    var user: User?
    
    override init() {
        super.init()
        displayDelegate = self
    }
    
    override func numberOfItems() -> Int {
        return 2
    }
    
    override func sizeForItem(at index: Int) -> CGSize {
        if index == 0 {
            return CGSize(width: UIScreen.main.bounds.size.width,
                          height: UIScreen.main.bounds.size.width)
        }
        return CGSize(width: UIScreen.main.bounds.size.width, height: 50.0)
    }
    
    override func cellForItem(at index: Int) -> UICollectionViewCell {
        if index == 0 {
            if let cell = collectionContext?.dequeueReusableCell(withNibName: ImageCell.className(), bundle: nil, for: self, at: index) {
                return cell
            }
        }
        if index == 1 {
            if let cell = collectionContext?.dequeueReusableCell(withNibName: LikeButtonCell.className(), bundle: nil, for: self, at: index) {
                return cell
            }
        }

        return UICollectionViewCell(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
    }
    
    override func didUpdate(to object: Any) {
        user = object as? User
    }
    
    override func didSelectItem(at index: Int) {
        if index == 0 {
            
        }
        if index == 1 {
            
        }
    }
    
    func listAdapter(_ listAdapter: ListAdapter, willDisplay sectionController: ListSectionController) {
        print("willDisplay")
    }
    
    func listAdapter(_ listAdapter: ListAdapter, didEndDisplaying sectionController: ListSectionController) {
        print("didEndDisplay")
    }
    
    func listAdapter(_ listAdapter: ListAdapter, willDisplay sectionController: ListSectionController, cell: UICollectionViewCell, at index: Int) {
        print("willDisplay atIndex:\(index)")
    }
    
    func listAdapter(_ listAdapter: ListAdapter, didEndDisplaying sectionController: ListSectionController, cell: UICollectionViewCell, at index: Int) {
        print("didEndDisplay atIndex:\(index)")
    }
    
    
}
