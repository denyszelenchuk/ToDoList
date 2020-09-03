//
//  Accessible.swift
//  ToDoList
//
//  Created by denys zelenchuk on 03.09.20.
//  Copyright © 2020 Radu Ursache - RanduSoft. All rights reserved.
//

import Foundation
import UIKit

protocol Accessible {
    func generateAccessibilityIdentifiers()
}

extension Accessible {

    func generateAccessibilityIdentifiers() {
        #if DEBUG
        let mirror = Mirror(reflecting: self)

        for child in mirror.children {
            if
                let view = child.value as? UIView,
                let identifier = child.label?.replacingOccurrences(of: ".storage", with: "") {
                view.accessibilityIdentifier = "\(type(of: self)).\(identifier)"
            }
        }
        #endif
    }
}
