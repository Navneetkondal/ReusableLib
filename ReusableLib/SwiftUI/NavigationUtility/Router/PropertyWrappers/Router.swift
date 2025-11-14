

import SwiftUI

@MainActor
@propertyWrapper
public struct Router<RouteType: RoutableStorage>: DynamicProperty {
    @AppStorage private var storage: Data
    private let encoder: JSONEncoder = .init()
    private let decoder: JSONDecoder = .init()
    private let defaultValue: [RouteType]

    public var wrappedValue: [RouteType] {
        get {
            guard let decoded = try? decoder.decode([RouteType].self, from: storage) else {
                return defaultValue
            }
            return decoded
        }
        nonmutating set {
            guard let encoded = try? encoder.encode(newValue) else { return }
            storage = encoded
        }
    }

    public var projectedValue: Binding<[RouteType]> {
        Binding(
            get: { wrappedValue },
            set: { wrappedValue = $0 }
        )
    }

    public init(
        wrappedValue: [RouteType],
        _ key: String = "RouterKey",
        store: UserDefaults? = nil
    ) {
        defaultValue = wrappedValue
        let initialData = (try? encoder.encode(wrappedValue)) ?? Data()
        _storage = .init(wrappedValue: initialData, key, store: store)
    }
    
    func removeRouter(){
        UserDefaults.standard.removeObject(forKey: "RouterKey")
    }
}
