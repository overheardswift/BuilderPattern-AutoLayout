//
//  UsesAutoLayout+PropertyWrapper.swift
//  BuilderPattern+AutoLayout
//
//  Created by Bayu Kurniawan on 8/6/21.
//

import UIKit

@propertyWrapper
public struct UsesAutoLayout<T: Buildable> {
  
  public var wrappedValue: T {
    didSet {
      guard let view = wrappedValue as? UIView else {
        return
      }
      view.translatesAutoresizingMaskIntoConstraints = false
    }
  }
  
  public init(wrappedValue: T) {
    self.wrappedValue = wrappedValue
  }
}
