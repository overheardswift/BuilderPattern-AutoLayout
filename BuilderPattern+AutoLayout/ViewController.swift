//
//  ViewController.swift
//  BuilderPattern+AutoLayout
//
//  Created by Bayu Kurniawan on 8/6/21.
//

import UIKit

class ViewController: UIViewController {
  
  private lazy var button = UIButton.build {
    $0.setTitle("Button", for: .normal)
    $0.setTitleColor(.white, for: .normal)
    $0.backgroundColor = .systemPink
    $0.layer.cornerRadius = 10
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    // We dont need to set the `.translatesAutoresizingMaskIntoConstraints` to `false` ever again.
    view.addSubview(button)
    button.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 0).isActive = true
    button.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0).isActive = true
    button.widthAnchor.constraint(equalToConstant: 120).isActive = true
    button.heightAnchor.constraint(equalToConstant: 40).isActive = true
  }

}

