


import Foundation
import UIKit

@MainActor
public protocol InitStoryboardProtocol{
    /// InitiateStoryboard
    /// - Parameter bundle: Bundle id of UIViewController
    /// - Returns: UIStoryboard
    ///
    func initantiateStoryboard(for bundle: Bundle) -> UIStoryboard
}

extension InitStoryboardProtocol where Self: RawRepresentable, Self.RawValue == String{
    public func initantiateStoryboard(for bundle: Bundle) -> UIStoryboard{
        return UIStoryboard(name: self.rawValue, bundle: bundle)
    }
}
