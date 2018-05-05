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
    
    override func numberOfItems() -> Int {
        return 1
    }
    
    override func sizeForItem(at index: Int) -> CGSize {
        return CGSize(width: 300.0, height: 300.0)
    }
    
    override func cellForItem(at index: Int) -> UICollectionViewCell {
        if let cell = collectionContext!.dequeueReusableCellFromStoryboard(withIdentifier: "imageCell", for: self, at: index) as? ImageCell {
            cell.label.text = user?.name
            return cell
        }
        
        return UICollectionViewCell(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
    }
    
    override func didUpdate(to object: Any) {
        user = object as? User
    }
    
    override func didSelectItem(at index: Int) {
        
        
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
