


import Foundation
import UIKit

@MainActor
public protocol KeyboardHandelerProtocol{
    func keyboardSetupAutoAdjust(for observer: Any, showSelector: Selector, hideSelector: Selector)
    func removeKeyboardObserver()
    func adjustViewWhenKeyboardShow(_ notification:Notification)
    func adjustViewWhenkeyboardHide(_ notification:Notification)
    func fitContentInset(inset:UIEdgeInsets)
}

extension KeyboardHandelerProtocol{
    
    public func keyboardSetupAutoAdjust(for observer: Any, showSelector: Selector, hideSelector: Selector){
        NotificationCenter.default.addObserver(observer, selector: showSelector, name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(observer, selector: hideSelector, name: UIResponder.keyboardWillHideNotification, object: nil)
    }
    
    public func removeKeyboardObserver(){
        NotificationCenter.default.removeObserver(UIResponder.keyboardWillHideNotification)
        NotificationCenter.default.removeObserver(UIResponder.keyboardWillHideNotification)
    }
    
    public func adjustViewWhenKeyboardShow(_ notification:Notification){
        if let keyboardSize = (notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? NSValue)?.cgRectValue {
            self.fitContentInset(inset: UIEdgeInsets(top: 0, left: 0, bottom: keyboardSize.height, right: 0))
        }
    }
    
    public func adjustViewWhenkeyboardHide(_ notification:Notification){
        if ((notification.userInfo?[UIResponder.keyboardFrameBeginUserInfoKey] as? NSValue)?.cgRectValue) != nil {
            self.fitContentInset(inset: .zero)
        }
    }
}

extension KeyboardHandelerProtocol where Self : UITableView {
    public func fitContentInset(inset:UIEdgeInsets){
        self.contentInset = inset
        self.scrollIndicatorInsets = inset
    }
}

extension KeyboardHandelerProtocol where Self : UICollectionView {
    public func fitContentInset(inset:UIEdgeInsets){
        self.contentInset = inset
        self.scrollIndicatorInsets = inset
    }
}

extension KeyboardHandelerProtocol where Self : UIScrollView {
    public func fitContentInset(inset:UIEdgeInsets){
        self.contentInset = inset
        self.scrollIndicatorInsets = inset
    }
}


