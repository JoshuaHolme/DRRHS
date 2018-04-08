//
//  ImageVC.swift
//  DRRHS
//
//  Created by Sam DuBois on 4/7/18.
//  Copyright © 2018 Joshua Holme. All rights reserved.
//

import UIKit

class ImageVC: UIViewController {
    
    // MARK: - IB Outlets
    @IBOutlet weak var imageView: UIImageView!
    
    // MARK: - Variables
    var image: UIImage?

    override func viewDidLoad() {
        super.viewDidLoad()

        imageView.image = image
    }

    @IBAction func closeButtonPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
}
