//
//  UIViewController+Keyboard.swift
//
//  Created by Håkon Bogen on 10/12/14.
//  Copyright (c) 2014 Håkon Bogen. All rights reserved.
//  MIT LICENSE

import UIKit

private var scrollViewKey : UInt8 = 0

extension UIViewController {
    
    public func setupKeyboardNotifcationListenerForScrollView(_ scrollView: UIScrollView) {
        NotificationCenter.default.addObserver(self, selector: #selector(UIViewController.keyboardWillShow(_:)), name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(UIViewController.keyboardWillHide(_:)), name: UIResponder.keyboardWillHideNotification, object: nil)
        internalScrollView = scrollView
    }
    
    public func removeKeyboardNotificationListeners() {
        NotificationCenter.default.removeObserver(self, name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.removeObserver(self, name: UIResponder.keyboardWillHideNotification, object: nil)
    }
    
    fileprivate var internalScrollView: UIScrollView! {
        get {
            return objc_getAssociatedObject(self, &scrollViewKey) as? UIScrollView
        }
        set(newValue) {
            objc_setAssociatedObject(self, &scrollViewKey, newValue, .OBJC_ASSOCIATION_ASSIGN)
        }
    }
    
    @objc func keyboardWillShow(_ notification: Notification) {
        let userInfo = (notification as NSNotification).userInfo as! Dictionary<String, AnyObject>
        let animationDuration = userInfo[UIResponder.keyboardAnimationDurationUserInfoKey] as! TimeInterval
        let keyboardFrame = userInfo[UIResponder.keyboardFrameEndUserInfoKey]?.cgRectValue
        let keyboardFrameConvertedToViewFrame = view.convert(keyboardFrame!, from: nil)
        let options = UIView.AnimationOptions.beginFromCurrentState
        UIView.animate(withDuration: animationDuration, delay: 0, options:options, animations: { () -> Void in
            let insetHeight = (self.internalScrollView.frame.height + self.internalScrollView.frame.origin.y) - keyboardFrameConvertedToViewFrame.origin.y
            self.internalScrollView.contentInset = UIEdgeInsets.init(top: 0, left: 0, bottom: insetHeight, right: 0)
            self.internalScrollView.scrollIndicatorInsets  = UIEdgeInsets.init(top: 0, left: 0, bottom: insetHeight, right: 0)
            }) { (complete) -> Void in
        }
    }
    
    @objc func keyboardWillHide(_ notification: Notification) {
        let userInfo = (notification as NSNotification).userInfo as! Dictionary<String, AnyObject>
        let animationDuration = userInfo[UIResponder.keyboardAnimationDurationUserInfoKey] as! TimeInterval
        let options = UIView.AnimationOptions.beginFromCurrentState
        UIView.animate(withDuration: animationDuration, delay: 0, options:options, animations: { () -> Void in
            self.internalScrollView.contentInset = UIEdgeInsets.init(top: 0, left: 0, bottom: 0, right: 0)
            self.internalScrollView.scrollIndicatorInsets  = UIEdgeInsets.init(top: 0, left: 0, bottom: 0, right: 0)
            }) { (complete) -> Void in
        }
    }
}
