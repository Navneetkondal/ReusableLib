////
//	LoggerUtil.swift
//
//  Created By Navneet on  02/08/25
//

import Foundation

enum LogLevel: String {
    case debug = "DEBUG"
    case info = "INFO"
    case warning = "WARNING"
    case error = "ERROR"
}

actor LoggerUtil {
    
    static let shared = LoggerUtil()
    
    private init() {}
    
    nonisolated func log(_ message: String,
             level: LogLevel = .debug,
             file: String = #file,
             function: String = #function,
             line: Int = #line) {
        if !DeviceEnvironment.isDebug{
            return
        }
        let fileName = (file as NSString).lastPathComponent
        let timestamp = timestamp()
        print("\(timestamp) [\(level.rawValue)] \(fileName):\(line) \(function) ➝ \(message)")
    }
    
    func logJSON<T: Codable>(_ object: T,
                             level: LogLevel = .debug,
                             file: String = #file,
                             function: String = #function,
                             line: Int = #line) {
        if !DeviceEnvironment.isDebug{
            return
        }
        let encoder = JSONEncoder()
        encoder.outputFormatting = [.prettyPrinted, .sortedKeys]
        do {
            let data = try encoder.encode(object)
            if let jsonString = String(data: data, encoding: .utf8) {
                log("JSON Output:\n\(jsonString)", level: level, file: file, function: function, line: line)
            }
        } catch {
            log("Failed to encode object to JSON: \(error)", level: .error, file: file, function: function, line: line)
        }
    }
    
    func logDecodedJSON<T: Codable>(_ data: Data,
                                    as type: T.Type,
                                    level: LogLevel = .debug,
                                    file: String = #file,
                                    function: String = #function,
                                    line: Int = #line) {
        if !DeviceEnvironment.isDebug{
            return
        }
        let decoder = JSONDecoder()
        do {
            let object = try decoder.decode(T.self, from: data)
            logJSON(object, level: level, file: file, function: function, line: line)
        } catch {
            log("Failed to decode data to \(T.self): \(error)", level: .error, file: file, function: function, line: line)
        }
    }
    
    func logError(_ error: Error,
                  message: String? = nil,
                  file: String = #file,
                  function: String = #function,
                  line: Int = #line) {
        let errorMessage = "ERROR: \(message ?? "An error occurred") → \(type(of: error)) : \(error.localizedDescription)"
        log(errorMessage, level: .error, file: file, function: function, line: line)
    }
    
    func logDeserializedJSON(_ data: Data,
                             file: String = #file,
                             function: String = #function,
                             line: Int = #line) {
        do {
            let jsonObject = try JSONSerialization.jsonObject(with: data, options: [.mutableContainers, .fragmentsAllowed])
            
            let prettyData = try JSONSerialization.data(withJSONObject: jsonObject, options: [.prettyPrinted])
            if let jsonString = String(data: prettyData, encoding: .utf8) {
                log("Deserialized JSON:\n\(jsonString)", level: .debug, file: file, function: function, line: line)
            } else {
                log("Deserialized JSON but failed to convert to string", level: .warning, file: file, function: function, line: line)
            }
        } catch {
            logError(error, message: "Failed to deserialize JSON", file: file, function: function, line: line)
        }
    }
    
   nonisolated private func timestamp() -> String {
        Date.getDateStringFromDate(Date(), format: "yyyy-MM-dd HH:mm:ss.SSS")
    }
}
