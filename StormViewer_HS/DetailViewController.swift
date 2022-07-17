//
//  DetailViewController.swift
//  StormViewer_HS
//
//  Created by Shah Md Imran Hossain on 16/7/22.
//

import UIKit

class DetailViewController: UIViewController {
    @IBOutlet weak var imageView: UIImageView!
    var selectImage: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        guard let imageToLoad = selectImage else {
            print("[DetailViewController] selected image is nil")
            return
        }
        
        // setting title of screen
        title = imageToLoad
        navigationItem.largeTitleDisplayMode = .never
        
        imageView.image = UIImage(named: imageToLoad)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.hidesBarsOnTap = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.hidesBarsOnTap = false
    }
}
