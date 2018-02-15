//
//  PopVC.swift
//  pixel-city
//
//  Created by david.roff on 2/13/18.
//  Copyright © 2018 david.roff. All rights reserved.
//

import UIKit
import Alamofire

class PopVC: UIViewController, UIGestureRecognizerDelegate {

    @IBOutlet weak var popImgView: UIImageView!
    @IBOutlet weak var imageNameLbl: UILabel!
    @IBOutlet weak var imageDateLbl: UILabel!
    
    var selectedPhoto: PhotoInfo!
    
    func initData(forImage image: PhotoInfo) {
        self.selectedPhoto = image
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        popImgView.image = selectedPhoto.image
        imageNameLbl.text = selectedPhoto.title as? String
        addDoubleTap()
    }
    
    func addDoubleTap() {
        let doubleTap = UITapGestureRecognizer(target: self, action: #selector(screenWasDoubleTapped))
        doubleTap.numberOfTapsRequired = 2
        doubleTap.delegate = self
        view.addGestureRecognizer(doubleTap)
    }

    @objc func screenWasDoubleTapped() {
        dismiss(animated: true, completion: nil)
    }
}
