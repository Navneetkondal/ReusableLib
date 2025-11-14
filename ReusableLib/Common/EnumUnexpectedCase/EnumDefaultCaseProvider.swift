


import Foundation

public protocol EnumDefaultCaseProvider: RawRepresentable, Codable, CaseIterable {
    associatedtype rawValueType: Codable
    static var defaultValue: Self { get }
}

public extension EnumDefaultCaseProvider {
    
    init(from decoder: Decoder) throws {
        if let value = try? decoder.singleValueContainer().decode(rawValueType.self), let val = value as? Self.RawValue, let convertedValue = Self(rawValue: val) {
            self = convertedValue
        }else {
            self = Self.defaultValue
        }
    }
    
    init(caseInsensitiveRawValue: rawValueType) {
        if let newRawValue = caseInsensitiveRawValue as? Self.RawValue, let convertedValue = Self(rawValue: newRawValue) {
            self = convertedValue
        }else {
            self = Self.defaultValue
        }
    }
}
