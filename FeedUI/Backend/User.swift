//
//  User.swift
//  FeedUI
//
//  Created by Lurf on 2018/05/05.
//  Copyright © 2018 Lurf. All rights reserved.
//

import UIKit
import IGListKit

final class User: NSObject {
    let id: Int
    let name: String
    
    init(id: Int, name: String) {
        self.id = id
        self.name = name
    }
}

extension NSObject: ListDiffable {
    public func diffIdentifier() -> NSObjectProtocol {
        return self
    }
    
    public func isEqual(toDiffableObject object: ListDiffable?) -> Bool {
        return isEqual(object)
    }
}
