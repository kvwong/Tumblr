//
//  ComposeViewController.swift
//  Tumblr
//
//  Created by Kevin Wong on 10/10/15.
//  Copyright © 2015 Kevin Wong. All rights reserved.
//

import UIKit

class ComposeViewController: UIViewController {

    @IBOutlet weak var textButton: UIImageView!
    @IBOutlet weak var photoButton: UIImageView!
    @IBOutlet weak var quoteButton: UIImageView!
    @IBOutlet weak var linkButton: UIImageView!
    @IBOutlet weak var chatButton: UIImageView!
    @IBOutlet weak var videoButton: UIImageView!
    @IBOutlet weak var nevermindButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textButton.frame.origin.y = 568
        photoButton.frame.origin.y = 568
        quoteButton.frame.origin.y = 568
        linkButton.frame.origin.y = 868
        chatButton.frame.origin.y = 868
        videoButton.frame.origin.y = 868
        nevermindButton.frame.origin.y = 568
        
        self.textButton.alpha = 1
        self.photoButton.alpha = 1
        self.quoteButton.alpha = 1
        self.linkButton.alpha = 1
        self.chatButton.alpha = 1
        self.videoButton.alpha = 1
        
                
        //self.modalPresentationStyle = UIModalPresentationStyle.OverCurrentContext
        // Do any additional setup after loading the view.
    }

    override func viewWillAppear(animated: Bool) {
        self.textButton.alpha = 1
        self.photoButton.alpha = 1
        self.quoteButton.alpha = 1
        self.linkButton.alpha = 1
        self.chatButton.alpha = 1
        self.videoButton.alpha = 1
        
        UIView.animateWithDuration(0.35, delay: 0.0, usingSpringWithDamping: 0.8, initialSpringVelocity: 2.0, options: UIViewAnimationOptions.CurveEaseOut, animations: { () -> Void in
                self.textButton.frame.origin.y = 154
                self.nevermindButton.frame.origin.y = 515
            }) { (Bool) -> Void in
                //code
        }
        UIView.animateWithDuration(0.35, delay: 0.05, usingSpringWithDamping: 0.8, initialSpringVelocity: 2.0, options: UIViewAnimationOptions.CurveEaseOut, animations: { () -> Void in
            self.photoButton.frame.origin.y = 154
            }) { (Bool) -> Void in
                //code
        }
        UIView.animateWithDuration(0.35, delay: 0.15, usingSpringWithDamping: 0.8, initialSpringVelocity: 2.0, options: UIViewAnimationOptions.CurveEaseOut, animations: { () -> Void in
            self.quoteButton.frame.origin.y = 154
            }) { (Bool) -> Void in
                //code
        }
        UIView.animateWithDuration(0.35, delay: 0.1, usingSpringWithDamping: 0.8, initialSpringVelocity: 2.0, options: UIViewAnimationOptions.CurveEaseOut, animations: { () -> Void in
            self.linkButton.frame.origin.y = 276
            }) { (Bool) -> Void in
                //code
        }
        UIView.animateWithDuration(0.35, delay: 0.05, usingSpringWithDamping: 0.8, initialSpringVelocity: 2.0, options: UIViewAnimationOptions.CurveEaseOut, animations: { () -> Void in
            self.chatButton.frame.origin.y = 276
            }) { (Bool) -> Void in
                //code
        }
        UIView.animateWithDuration(0.35, delay: 0.1, usingSpringWithDamping: 0.8, initialSpringVelocity: 2.0, options: UIViewAnimationOptions.CurveEaseOut, animations: { () -> Void in
            self.videoButton.frame.origin.y = 276
            }) { (Bool) -> Void in
                //code
        }
    }
    override func viewWillDisappear(animated: Bool) {
        UIView.animateWithDuration(0.35, delay: 0.0, usingSpringWithDamping: 0.8, initialSpringVelocity: 2.0, options: UIViewAnimationOptions.CurveEaseIn, animations: { () -> Void in
            self.textButton.frame.origin.y = -200
            self.nevermindButton.frame.origin.y = 568
            }) { (Bool) -> Void in
                //code
        }
        UIView.animateWithDuration(0.35, delay: 0.05, usingSpringWithDamping: 0.8, initialSpringVelocity: 2.0, options: UIViewAnimationOptions.CurveEaseIn, animations: { () -> Void in
            self.photoButton.frame.origin.y = -200
            }) { (Bool) -> Void in
                //code
        }
        UIView.animateWithDuration(0.35, delay: 0.15, usingSpringWithDamping: 0.8, initialSpringVelocity: 2.0, options: UIViewAnimationOptions.CurveEaseIn, animations: { () -> Void in
            self.quoteButton.frame.origin.y = -200
            }) { (Bool) -> Void in
                //code
        }
        UIView.animateWithDuration(0.35, delay: 0.1, usingSpringWithDamping: 0.8, initialSpringVelocity: 2.0, options: UIViewAnimationOptions.CurveEaseIn, animations: { () -> Void in
            self.linkButton.frame.origin.y = -100
            }) { (Bool) -> Void in
                //code
        }
        UIView.animateWithDuration(0.35, delay: 0.05, usingSpringWithDamping: 0.8, initialSpringVelocity: 2.0, options: UIViewAnimationOptions.CurveEaseIn, animations: { () -> Void in
            self.chatButton.frame.origin.y = -100
            }) { (Bool) -> Void in
                //code
        }
        UIView.animateWithDuration(0.35, delay: 0.1, usingSpringWithDamping: 0.8, initialSpringVelocity: 2.0, options: UIViewAnimationOptions.CurveEaseIn, animations: { () -> Void in
            self.videoButton.frame.origin.y = -100
            }) { (Bool) -> Void in
                self.textButton.frame.origin.y = 568
                self.photoButton.frame.origin.y = 568
                self.quoteButton.frame.origin.y = 568
                self.linkButton.frame.origin.y = 868
                self.chatButton.frame.origin.y = 868
                self.videoButton.frame.origin.y = 868
                
                self.textButton.alpha = 0
                self.photoButton.alpha = 0
                self.quoteButton.alpha = 0
                self.linkButton.alpha = 0
                self.chatButton.alpha = 0
                self.videoButton.alpha = 0
        }
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func nevermind(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
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
