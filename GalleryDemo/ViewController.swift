//
//  ViewController.swift
//  GalleryDemo
//
//  Created by Денис Калугин on 22.03.2020.
//  Copyright © 2020 Hyper Interaktiv AS. All rights reserved.
//

import UIKit
import Gallery

class ViewController: UIViewController {
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        Config.tabsToShow = [.imageTab, .cameraTab]
        Config.initialTab = .imageTab
        Config.Grid.FrameView.borderColor = .red
        Config.PageIndicator.backgroundColor = .red
        Config.Grid.CloseButton.tintColor = .yellow
        
        let vc = GalleryController()
        vc.delegate = self
        present(vc, animated: true, completion: nil)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
}

extension ViewController: GalleryControllerDelegate {
    
    func galleryController(_ controller: GalleryController, didSelectImages images: [Image]) {
        controller.dismiss(animated: true, completion: nil)
    }
    
    func galleryController(_ controller: GalleryController, didSelectVideo video: Video) {}
    
    func galleryController(_ controller: GalleryController, requestLightbox images: [Image]) {}
    
    func galleryControllerDidCancel(_ controller: GalleryController) {
        controller.dismiss(animated: true, completion: nil)
    }
}

