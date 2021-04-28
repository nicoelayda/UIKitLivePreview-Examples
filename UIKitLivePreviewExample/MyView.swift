//
//  Copyright © 2021 Dominic Elayda.
//  Licensed under The MIT License.
//

import UIKit

class MyView: UIView {
    
    private var label: UILabel = UILabel()
    
    var displayText: String? {
        get { label.text }
        set { label.text = newValue }
    }
    
    convenience init(displayText: String? = nil) {
        self.init(frame: .zero)
        self.displayText = displayText
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        commonInit()
    }
    
    private func commonInit() {
        backgroundColor = .white
        addSubview(label)
        
        setupConstraints()
    }
    
    private func setupConstraints() {
        label.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            label.centerXAnchor.constraint(
                equalTo: safeAreaLayoutGuide.centerXAnchor),
            label.centerYAnchor.constraint(
                equalTo: safeAreaLayoutGuide.centerYAnchor),
        ])
    }
    
}

#if DEBUG && canImport(SwiftUI)
import SwiftUI

@available(iOS 13.0, *)
struct MyView_Preview: PreviewProvider {
    
    static var dependency = "Hello, dependency injection"
    
    static var previews: some View {
        MyView(displayText: dependency)
            .preview()
            .previewLayout(
                .fixed(width: 300, height: 500)
            )
    }
}
#endif
