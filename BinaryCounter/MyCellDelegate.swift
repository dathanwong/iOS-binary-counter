//
//  MyCellDelegate.swift
//  BinaryCounter
//
//  Created by Dathan Wong on 10/15/20.
//  Copyright © 2020 Dathan Wong. All rights reserved.
//

import Foundation
import UIKit

protocol MyCellDelegate: class {
    func addValue(value: Int)
    func subValue(value: Int)
}
