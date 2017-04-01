//
//  ViewController.swift
//  loading spinners
//
//  Created by Adrien Maranville on 4/1/17.
//  Copyright © 2017 Adrien Maranville. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var activityIndicator = UIActivityIndicatorView()

    @IBAction func btnTriggerAlert(_ sender: Any) {
        let alertController = UIAlertController(title: "Howdy Stranger", message: "Are you awesome?", preferredStyle: UIAlertControllerStyle.alert)
        
        alertController.addAction(UIAlertAction(title: "Yes", style: .default, handler: { (action) in
            print("button pressed")
            self.dismiss(animated: true, completion: nil)
        }))
        
        alertController.addAction(UIAlertAction(title: "No", style: .default, handler: { (action) in
            print("button pressed")
            self.dismiss(animated: true, completion: nil)
        }))
        
        self.present(alertController, animated: true, completion: nil)
    }
    @IBAction func btnPauseApp(_ sender: Any) {
        
        activityIndicator = UIActivityIndicatorView (frame: CGRect(x: 0, y: 0, width: 50, height: 50))
        
        activityIndicator.center = self.view.center
        
        activityIndicator.hidesWhenStopped = true
        
        activityIndicator.activityIndicatorViewStyle = UIActivityIndicatorViewStyle.gray
        
        view.addSubview(activityIndicator)
        
        activityIndicator.startAnimating()
        
        //UIApplication.shared.beginIgnoringInteractionEvents()
        
    }
    @IBAction func btnRestartApp(_ sender: Any) {
        activityIndicator.stopAnimating()
        
        //UIApplication.shared.endIgnoringInteractionEvents()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

