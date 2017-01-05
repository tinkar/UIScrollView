//
//  ViewController.swift
//  UIScrollView
//
//  Created by Krystian Kopeć on 04.01.2017.
//  Copyright © 2017 Krystian Kopeć. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var scrollView: UIScrollView!
    
    
    var images = [UIImageView]()
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }

    
    override func viewDidAppear(_ animated: Bool) {
    // the code was moved from viewDidLoad to viewDidAppear becuase viewDidLoad function does not provide the value of the width of the scrollview and viewDidAppear does
        
        
        var contentWidth: CGFloat = 0.0
        
        
        
        for x in 0...2 {
            
            let image = UIImage(named: "icon\(x).png")
            // connects the file to the current image variable (to be changed with the next iteration of the loop
            
            let scrollViewWidth = scrollView.frame.size.width
            
            let imageView = UIImageView(image: image)
            images.append(imageView)
            // creates an image view with the current image in it
            
            var newX: CGFloat = 0.0
            // sets the initial value for the center of the image in X axis
            
            newX = scrollViewWidth / 2 + scrollViewWidth * CGFloat(x)
            // sets the center of the image in X axis to be in the center of the screen plus the width of the screen multiplied by the number of images(each image corresponds to screen 0, 1 and 2)
            
            contentWidth += newX
            // sets the width of the content inside the scrollview to be compliant with the current value of newX
            
            scrollView.addSubview(imageView)
            // adds the image view to the main view
            
            imageView.frame = CGRect(x: newX - 75, y: (scrollView.frame.size.height / 2) - 75, width: 150, height: 150)
            // sets the position of the image view and its dimensions
            
            
        }
        
        scrollView.clipsToBounds = false
        // prevents clipping the images when scrolling
        
        scrollView.contentSize = CGSize(width: contentWidth, height: view.frame.size.height)
        // sets the final value of the size of the scroll view
    }
 


}

