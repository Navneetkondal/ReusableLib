


import Foundation
import UIKit

public extension UIViewController{
    
    private class func initController<T : InitStoryboardProtocol>(with storyboard : T)  -> Self? {
        return storyboard.initantiateStoryboard(for: Bundle(for: self)).instantiateViewController(withIdentifier: "\(self)") as? Self
    }
}

public extension UIViewController{
    
    class func initStoryboard(storyboard : StoryboardConstantEnum) -> Self {
        return initController(with: storyboard)!
    }
}
