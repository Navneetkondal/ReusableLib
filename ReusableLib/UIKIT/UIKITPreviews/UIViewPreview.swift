


import Foundation
import UIKit
import SwiftUI

struct UIViewPreview<View: UIView>: UIViewRepresentable {
    let viewBuilder: View
   // var viewBuilder: () -> UIView

    init(_ builder: @escaping () -> View) {
        viewBuilder = builder()
    }
    
    // MARK: UIViewRepresentable
    func makeUIView(context: Context) -> UIView {
        return viewBuilder
    }
    
    func updateUIView(_ view: UIView, context: Context) {
        // Nothing to do here
        viewBuilder.setContentHuggingPriority(.defaultHigh, for: .horizontal)
        viewBuilder.setContentHuggingPriority(.defaultHigh, for: .vertical)
    }
}
