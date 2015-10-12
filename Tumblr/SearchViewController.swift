//
//  SearchViewController.swift
//  Tumblr
//
//  Created by Kevin Wong on 10/10/15.
//  Copyright © 2015 Kevin Wong. All rights reserved.
//

import UIKit

class SearchViewController: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var searchFeedView: UIImageView!
    @IBOutlet weak var loader: UIImageView!
    
    var loading_1: UIImage!
    var loading_2: UIImage!
    var loading_3: UIImage!
    
    var images: [UIImage]!
    var animatedImage: UIImage!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        scrollView.contentSize = searchFeedView.image!.size
        scrollView.alpha = 0
        loader.alpha = 1
        
    }

    override func viewDidAppear(animated: Bool) {
        delay(2) {
            self.loader.alpha = 0
            UIView.animateWithDuration(0.3, animations: { () -> Void in
                self.scrollView.alpha = 1
            })
        }
    }
    
    override func viewDidDisappear(animated: Bool) {
        scrollView.alpha = 0
    }
    
    override func viewWillAppear(animated: Bool) {
        loading_1 = UIImage(named: "loading-1")
        loading_2 = UIImage(named: "loading-2")
        loading_3 = UIImage(named: "loading-3")
        
        images = [loading_1, loading_2, loading_3]
        
        animatedImage = UIImage.animatedImageWithImages(images, duration: 1.0)
        
        loader.alpha = 1
        loader.image = animatedImage
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func delay(delay:Double, closure:()->()) {
        dispatch_after(
            dispatch_time(
                DISPATCH_TIME_NOW,
                Int64(delay * Double(NSEC_PER_SEC))
            ),
            dispatch_get_main_queue(), closure)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
