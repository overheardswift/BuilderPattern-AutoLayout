//
//  Builder.swift
//  BuilderPattern+AutoLayout
//
//  Created by Bayu Kurniawan on 8/6/21.
//

import Foundation

public protocol Buildable {
  typealias BuilderParameter = (inout Self) -> Void
  init()
}

public extension Buildable {
  static func build(_ with: BuilderParameter) -> Self {
    @UsesAutoLayout var this: Self
    this = self.init()
    with(&this)
    return this
  }
}

extension NSObject: Buildable {}
