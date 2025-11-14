


import Foundation

extension KeyedDecodingContainer{
    /// Decodes a value of the given type for the given key, if present.
    ///
    /// This method returns  `default Value` if the container does not have a value
    /// associated with `key`, or if the value is null. The difference between
    /// these states can be distinguished with a `contains(_:)` call.
    ///
    /// - parameter type: The type of value to decode.
    /// - parameter key: The key that the decoded value is associated with.
    /// - returns: A decoded value of the requested `type`, or  `default Value`  if the
    ///   `Decoder` does not have an entry associated with the given key, or if
    ///   the `value` is a  `default value`.
    public func decodeIfPresentWithDefaultValue(_ type: String.Type, forKey key: K) -> String{
        (try? self.decodeIfPresent(type, forKey: key)).orDefault
    }
    
    /// Decodes a value of the given type for the given key, if present.
    ///
    /// This method returns  `default Value` if the container does not have a value
    /// associated with `key`, or if the value is null. The difference between
    /// these states can be distinguished with a `contains(_:)` call.
    ///
    /// - parameter type: The type of value to decode.
    /// - parameter key: The key that the decoded value is associated with.
    /// - returns: A decoded value of the requested `type`, or  `default Value`  if the
    ///   `Decoder` does not have an entry associated with the given key, or if
    ///   the `value` is a  `default value`.
    public func decodeIfPresentWithDefaultValue(_ type: Int.Type, forKey key: K) -> Int{
        (try? self.decodeIfPresent(type, forKey: key)).orDefault
    }
    
    /// Decodes a value of the given type for the given key, if present.
    ///
    /// This method returns  `default Value` if the container does not have a value
    /// associated with `key`, or if the value is null. The difference between
    /// these states can be distinguished with a `contains(_:)` call.
    ///
    /// - parameter type: The type of value to decode.
    /// - parameter key: The key that the decoded value is associated with.
    /// - returns: A decoded value of the requested `type`, or  `default Value`  if the
    ///   `Decoder` does not have an entry associated with the given key, or if
    ///   the `value` is a  `default value`.
    public func decodeIfPresentWithDefaultValue(_ type: Double.Type, forKey key: K) -> Double{
        (try? self.decodeIfPresent(type, forKey: key)).orDefault
    }
    
    /// Decodes a value of the given type for the given key, if present.
    ///
    /// This method returns  `default Value` if the container does not have a value
    /// associated with `key`, or if the value is null. The difference between
    /// these states can be distinguished with a `contains(_:)` call.
    ///
    /// - parameter type: The type of value to decode.
    /// - parameter key: The key that the decoded value is associated with.
    /// - returns: A decoded value of the requested `type`, or  `default Value`  if the
    ///   `Decoder` does not have an entry associated with the given key, or if
    ///   the `value` is a  `default value`.
    public func decodeIfPresentWithDefaultValue(_ type: Float.Type, forKey key: K) -> Float{
        (try? self.decodeIfPresent(type, forKey: key)).orDefault
    }
    
    /// Decodes a value of the given type for the given key, if present.
    ///
    /// This method returns  `default Value` if the container does not have a value
    /// associated with `key`, or if the value is null. The difference between
    /// these states can be distinguished with a `contains(_:)` call.
    ///
    /// - parameter type: The type of value to decode.
    /// - parameter key: The key that the decoded value is associated with.
    /// - returns: A decoded value of the requested `type`, or  `default Value`  if the
    ///   `Decoder` does not have an entry associated with the given key, or if
    ///   the `value` is a  `default value`.
    public func decodeIfPresentWithDefaultValue(_ type: Int32.Type, forKey key: K) -> Int32{
        (try? self.decodeIfPresent(type, forKey: key)).orDefault
    }
    
    /// Decodes a value of the given type for the given key, if present.
    ///
    /// This method returns  `default Value` if the container does not have a value
    /// associated with `key`, or if the value is null. The difference between
    /// these states can be distinguished with a `contains(_:)` call.
    ///
    /// - parameter type: The type of value to decode.
    /// - parameter key: The key that the decoded value is associated with.
    /// - returns: A decoded value of the requested `type`, or  `default Value`  if the
    ///   `Decoder` does not have an entry associated with the given key, or if
    ///   the `value` is a  `default value`.
    public func decodeIfPresentWithDefaultValue(_ type: Int64.Type, forKey key: K) -> Int64{
        (try? self.decodeIfPresent(type, forKey: key)).orDefault
    }
    
    /// Decodes a value of the given type for the given key, if present.
    ///
    /// This method returns  `default Value` if the container does not have a value
    /// associated with `key`, or if the value is null. The difference between
    /// these states can be distinguished with a `contains(_:)` call.
    ///
    /// - parameter type: The type of value to decode.
    /// - parameter key: The key that the decoded value is associated with.
    /// - returns: A decoded value of the requested `type`, or  `default Value`  if the
    ///   `Decoder` does not have an entry associated with the given key, or if
    ///   the `value` is a  `default value`.
    @available(iOS 18.0, *)
    public func decodeIfPresentWithDefaultValue(_ type: Int128.Type, forKey key: K) -> Int128{
        (try? self.decodeIfPresent(type, forKey: key)).orDefault
    }
    
    /// Decodes a value of the given type for the given key, if present.
    ///
    /// This method returns  `default Value` if the container does not have a value
    /// associated with `key`, or if the value is null. The difference between
    /// these states can be distinguished with a `contains(_:)` call.
    ///
    /// - parameter type: The type of value to decode.
    /// - parameter key: The key that the decoded value is associated with.
    /// - returns: A decoded value of the requested `type`, or  `default Value`  if the
    ///   `Decoder` does not have an entry associated with the given key, or if
    ///   the `value` is a  `default value`.
    public func decodeIfPresentWithDefaultValue(_ type: Bool.Type, forKey key: K) -> Bool{
        (try? self.decodeIfPresent(type, forKey: key)).orDefault
    }
    
    /// Decodes a value of the given type for the given key, if present.
    ///
    /// This method returns  `default Value` if the container does not have a value
    /// associated with `key`, or if the value is null. The difference between
    /// these states can be distinguished with a `contains(_:)` call.
    ///
    /// - parameter type: The type of value to decode.
    /// - parameter key: The key that the decoded value is associated with.
    /// - returns: A decoded value of the requested `type`, or  `default Value`  if the
    ///   `Decoder` does not have an entry associated with the given key, or if
    ///   the `value` is a  `default value`.
    public func decodeIfPresentWithDefaultValue<T>(_ type: T.Type, forKey key: K) -> T where T : Decodable & DefaultOptionalValueProtocol{
        (try? self.decodeIfPresent(type, forKey: key))?.orDefault as! T
    }
}
