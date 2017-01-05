//
//  ViewController.swift
//  UIScrollView
//
//  Created by Krystian Kopeć on 04.01.2017.
//  Copyright © 2017 Krystian Kopeć. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var images = [UIImageView]()
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for x in 0...2 {
            
            let image = UIImage(named: "icon\(x).png")
            images.append(UIImageView(image: image))
            
            
        }
        
        print("count: \(images.count)")
        
    }

 


}

