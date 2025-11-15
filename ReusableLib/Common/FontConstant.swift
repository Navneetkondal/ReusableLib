


import Foundation
import UIKit

public enum FontConstant {
    
    case bold(CGFloat)
    case semiBold(CGFloat)
    case regular(CGFloat)
    case semiBoldItalic(CGFloat)
    
    public var font : UIFont {
        switch self {
            case .bold(let fontSize):
                return bold(size: fontSize)
            case .semiBold(let fontSize):
                return semiBold(size: fontSize)
            case .regular(let fontSize):
                return regular(size: fontSize)
            case .semiBoldItalic(let fontSize):
                return semiBoldItalic(size: fontSize)
        }
    }
    
    func bold(size: CGFloat) -> UIFont{
        getFont(for: .bold, with: size)!
    }
    
    func semiBold(size: CGFloat) -> UIFont{
        getFont(for: .semiBold, with: size)!
    }
    
    func regular(size: CGFloat) -> UIFont{
        getFont(for: .regular, with: size)!
    }
    
    func semiBoldItalic(size: CGFloat) -> UIFont{
        getFont(for: .semiBoldItalic, with: size)!
    }
    
    func getFont(for type: FontNames, with size: CGFloat) -> UIFont?{
        UIFont(name: type.rawValue, size: size)
        UIFont.fontNames(forFamilyName: <#T##String#>)
    }
    
    enum fontFamily: String{
        case OpenSans
    }
    enum FontNames: String {
        case regular = "OpenSans"
        case semiBold = "OpenSans-semibold"
        case bold = "OpenSans-bold"
        case semiBoldItalic = "OpenSans-SemiboldItalic"
    }
}

