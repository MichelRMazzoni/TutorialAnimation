//
//  TutorialTrhee.swift
//  TutorialAnimation
//
//  Created by Michel Mazzoni on 01/07/19.
//  Copyright © 2019 Michel Mazzoni. All rights reserved.
//

import UIKit

class TutorialTrhee: UIViewController {
    
    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var lblDescription: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func actionStartAnimationTapped(_ sender: UIButton) {
        animatedTitle()
        animatedDescription()
    }
    
    func animatedTitle(){
        UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 0.5, initialSpringVelocity: 0.5, options: .curveEaseOut, animations: {
            
            self.lblTitle.transform = CGAffineTransform(translationX: -30, y: 0)
            
        }) { (_) in
            UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: .curveEaseOut, animations: {
                self.lblTitle.alpha = 0
                self.lblTitle.transform = self.lblTitle.transform.translatedBy(x: 0, y: -200)
            })
            
        }
    }
    
    func animatedDescription(){
        UIView.animate(withDuration: 0.5, delay: 0.5, usingSpringWithDamping: 0.5, initialSpringVelocity: 0.5, options: .curveEaseOut, animations: {
            
            self.lblDescription.transform = CGAffineTransform(translationX: -30, y: 0)
            
        }) { (_) in
            UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: .curveEaseOut, animations: {
                self.lblDescription.alpha = 0
                self.lblDescription.transform = self.lblTitle.transform.translatedBy(x: 0, y: -200)
                self.performSegue(withIdentifier: "pushTutorialFour", sender: nil)
            })
        }
    }
    
    
    
    
}
