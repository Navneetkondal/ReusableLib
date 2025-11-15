

import Foundation

actor DeviceEnvironment{
    static var isDebug: Bool{
#if DEBUG
        return true
#else
        return false
#endif
    }
    
    static var isSimulator: Bool{
#if targetEnvironment(simulator)
        return true
#else
        return false
#endif
    }
    
    
    //#if os(macOS) /* Checks the target operating system */
    //
    //#if canImport(UIKit) /* Check if a module presents */
    //
    //#if swift(<5) /* Check the Swift version */
    //
    //#if targetEnvironment(simulator) /* Check envrionments like simulator or macCatalyst */
    //
    //#if compiler(<7) /* Check compiler version */
}

actor DeviceOS{
    static var isMacOS: Bool{
#if os(macOS)
        return true
#else
        return false
#endif
    }
    
    static var isIOS: Bool{
#if os(iOS)
        return true
#else
        return false
#endif
    }
    
    static var isIpadOS: Bool{
#if os(iPadOS)
        return true
#else
        return false
#endif
    }
    
    static var isWatchOS: Bool{
#if os(watchOS)
        return true
#else
        return false
#endif
    }
}
