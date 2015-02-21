//
//  SecondViewController.swift
//  ScrollViewKeyboardResize
//
//  Created by Håkon Bogen on 12/02/15.
//  Copyright (c) 2015 haaakon. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITextViewDelegate, UITextFieldDelegate {

    @IBOutlet weak var scrollView : UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupKeyboardNotifcationListenerForScrollView(scrollView)
        // Do any additional setup after loading the view, typically from a nib.
    }
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        scrollView.contentSize = CGSizeMake(scrollView.frame.size.width, 700)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }

}

