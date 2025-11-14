
import SwiftUI

public extension View {

    func navigationDestination<D: RoutableStorage>(for routeType: D.Type) -> some View {
        self.navigationDestination(for: D.self, destination: { $0 })
    }
    
    func navigationDestination<D: Routable>(for routeType: D.Type) -> some View {
        self.navigationDestination(for: D.self, destination: { $0 })
    }

    func sheet<D: RoutableStorage & Identifiable>(item: Binding<D?>, onDismiss: (() -> Void)? = nil) -> some View {
        self.sheet(item: item, onDismiss: onDismiss, content: { $0 })
    }
    
    func sheet<D: Routable & Identifiable>(item: Binding<D?>, onDismiss: (() -> Void)? = nil) -> some View {
        self.sheet(item: item, onDismiss: onDismiss, content: { $0 })
    }
}

@available(iOS 17.0, macOS 14.0, tvOS 17.0, watchOS 10.0, *)
public extension View {

    func navigationDestination<D: RoutableStorage>(item: Binding<D?>) -> some View {
        self.navigationDestination(item: item, destination: { $0 })
    }
    
    func navigationDestination<D: Routable>(item: Binding<D?>) -> some View {
        self.navigationDestination(item: item, destination: { $0 })
    }
}
