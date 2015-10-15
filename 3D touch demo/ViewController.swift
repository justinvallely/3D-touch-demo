//
//  ViewController.swift
//  3D touch demo
//
//  Created by Justin Vallely on 10/7/15.
//  Copyright © 2015 Justin Vallely. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIViewControllerPreviewingDelegate {

    @IBAction func prepareForUnwind(segue: UIStoryboardSegue) {
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func viewWillAppear(animated: Bool) {
        check3DTouch()
    }

    func check3DTouch() {
        if traitCollection.forceTouchCapability == UIForceTouchCapability.Available {
            registerForPreviewingWithDelegate(self, sourceView: self.view)
            print("3D Touch is available!")
        }
    }

    func previewingContext(previewingContext: UIViewControllerPreviewing, viewControllerForLocation location: CGPoint) -> UIViewController? {

        let storyboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let peekViewController: UIViewController = storyboard.instantiateViewControllerWithIdentifier("peekViewController")

        return peekViewController

    }

    func previewingContext(previewingContext: UIViewControllerPreviewing, commitViewController viewControllerToCommit: UIViewController) {

        let storyboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let popViewController: UIViewController = storyboard.instantiateViewControllerWithIdentifier("popViewController")

        showViewController(popViewController, sender: self)
    }

}
