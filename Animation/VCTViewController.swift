//
//  VCTViewController.swift
//  VCTViewController
//
//  Created by Yu Qi on 2021/7/24.
//

import UIKit

class VCTViewController: UIViewController {
    
    @IBOutlet var button: UIButton!
    let transitionController = TransitionController(animationDuration: 0.2)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        button.addTarget(self, action: #selector(presentVC), for: .touchUpInside)
        
    }
    
    @objc func presentVC() {
        
        let vc = storyboard?.instantiateViewController(withIdentifier: "VCTViewControllerTwo")
        if let viewController = vc {
            viewController.transitioningDelegate = transitionController
            viewController.modalPresentationStyle = .custom
            viewController.view.frame.size.height = 700
            self.present(viewController, animated: true, completion: nil)
        }
        
    }

}
