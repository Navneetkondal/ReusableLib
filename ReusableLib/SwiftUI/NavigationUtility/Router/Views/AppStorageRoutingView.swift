//// 	 
//	AppStorageRoutingView.swift
//	ReusableLib
//
//	Created By Altametrics on 22/08/25
//	

//	Hubworks: https://www.hubworks.com
//


import Foundation
import SwiftUI

public struct AppStorageRoutingView<RouteType: RoutableStorage, RootContent: View>: View {
    @Binding private var path: [RouteType]
    private let rootContent: () -> RootContent
    private var isNavigationBarHidden =  false
    
    public init(
        path: Binding<[RouteType]>, isNavigationBarHidden: Bool =  false,
        @ViewBuilder rootContent: @escaping () -> RootContent
    ) {
        self._path = path
        self.rootContent = rootContent
        self.isNavigationBarHidden = isNavigationBarHidden
    }
    
    public var body: some View {
        if #available(iOS 16.0, *) {
            NavigationStack(path: $path) {
                rootContent()
                    .navigationDestination(for: RouteType.self)
            }
            .navigationBarHidden(isNavigationBarHidden)
            .toolbar(isNavigationBarHidden ? .hidden : .visible, for: .navigationBar)
        } else {
            NavigationView{
                rootContent()
                    .navigationDestination(for: RouteType.self)
            }
            .navigationBarHidden(isNavigationBarHidden)
        }
    }
}
