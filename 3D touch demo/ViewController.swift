//
//  ViewController.swift
//  3D touch demo
//
//  Created by Justin Vallely on 10/7/15.
//  Copyright © 2015 Justin Vallely. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

extension ViewController: UIViewControllerPreviewingDelegate {

    func previewingContext(previewingContext: UIViewControllerPreviewing, viewControllerForLocation location: CGPoint) -> UIViewController? {

        let peekViewController = storyboard?.instantiateViewControllerWithIdentifier("peekViewController")

        return peekViewController

    }

    func previewingContext(previewingContext: UIViewControllerPreviewing, commitViewController viewControllerToCommit: UIViewController) {

        let popViewController = storyboard?.instantiateViewControllerWithIdentifier("popViewController")

        showViewController(popViewController!, sender: self)
    }

}
