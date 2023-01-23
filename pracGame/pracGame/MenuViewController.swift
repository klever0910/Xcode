//
//  menu.swift
//  pracGame
//
//  Created by Mac on 19.01.2023.
//  Copyright © 2023 Savelii Novikov. All rights reserved.
//

import UIKit

class MenuViewController: UIViewController {
    
    @IBAction func oneTapped(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "game") as! GameViewController
        vc.modalPresentationStyle = .fullScreen
        self.present(vc, animated: false)
        
    }
    
    @IBAction func twoTapped(_ sender: Any) {
        
    }
    
}
