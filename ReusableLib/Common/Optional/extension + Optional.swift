


import Foundation
import UIKit

extension Optional where Wrapped == Int {
    ///Return `Wrapped` or `Default Value`
    public var orDefault: Int {
        return self ??  0
    }
    
    public func elseDefault(_ value: Int) -> Int {
        return self ?? value
    }
    
    public var isNilOrEmpty: Bool {
        return self == nil
    }
}

extension Optional where Wrapped == String {
    ///Return `Wrapped` or `Default Value`
    public var orDefault: String {
        return self ?? ""
    }
    
    public func elseDefault(_ value: String) -> String {
        return self ?? value
    }
    
    public var isNilOrEmpty: Bool {
        return self?.isEmpty ?? true
    }
}

extension Optional where Wrapped == Double {
    ///Return `Wrapped` or `Default Value`
    public var orDefault: Double {
        return self ?? 0.0
    }
    
    public func elseDefault(_ value: Double) -> Double {
        return self ?? value
    }
    
    public var isNilOrEmpty: Bool {
        return self == nil
    }
}

extension Optional where Wrapped == Float {
    ///Return `Wrapped` or `Default Value`
    public var orDefault: Float {
        return self ?? 0.0
    }
    
    public func elseDefault(_ value: Float) -> Float {
        return self ?? value
    }
    
    public var isNilOrEmpty: Bool {
        return self == nil
    }
}

extension Optional where Wrapped == Bool {
    ///Return `Wrapped` or `Default Value`
    public var orDefault: Bool {
        return self ?? false
    }
    
    public func elseDefault(_ value: Bool) -> Bool {
        return self ?? value
    }
    
    public var isNilOrEmpty: Bool {
        return self == nil
    }
}

extension Optional where Wrapped == Int32 {
    ///Return `Wrapped` or `Default value`
    public var orDefault: Int32 {
        return self ??  0
    }
    
    public func elseDefault(_ value: Int32) -> Int32 {
        return self ?? value
    }
    
    public var isNilOrEmpty: Bool {
        return self == nil
    }
}

extension Optional where Wrapped == Int64 {
    ///Return `Wrapped` or `Default Value`
    public var orDefault: Int64 {
        return self ?? 0
    }
    
    public func elseDefault(_ value: Int64) -> Int64 {
        return self ?? value
    }
    
    public var isNilOrEmpty: Bool {
        return self == nil
    }
}

@available(iOS 18.0, *)
extension Optional where Wrapped == Int128 {
    ///Return `Wrapped` or `Default Value`
    public var orDefault: Int128 {
        return self ?? 0
    }
    
    public func elseDefault(_ value: Int128) -> Int128 {
        return self ?? value
    }
    
    public var isNilOrEmpty: Bool {
        return self == nil
    }
}

extension Optional where Wrapped == Character {
    ///Return `Wrapped` or `Default Value`
    public var orDefault: Character {
        return self ?? Character("")
    }
    
    public func elseDefault(_ value: Character) -> Character {
        return self ?? value
    }
    
    public var isNilOrEmpty: Bool {
        return self == nil
    }
}

extension Optional where Wrapped: Collection {
    public var isNilOrEmpty: Bool {
        return self?.isEmpty ?? true
    }
}

extension Optional where Wrapped: UIView {
    public var isNilOrEmpty: Bool {
        return self == nil
    }
}

extension Optional where Wrapped: UIViewController {
    public var isNilOrEmpty: Bool {
        return self == nil
    }
}

/// To Use with custom data models
///  Example:
///  class EmployeeData{
///    var name: String!
///  }
///
///extension Optional: DefaultOptionalValueProtocol where Wrapped == EmployeeData && {
///associatedtype type = EmployeeData
///public var orDefault: EmployeeData {
///    return self ?? EmployeeData()
///}
///}
///
public protocol DefaultOptionalValueProtocol{
    associatedtype type
    var orDefault: type { get }
    var isNilOrEmpty: Bool { get }
}
