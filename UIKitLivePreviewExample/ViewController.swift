//
//  Copyright © 2021 Dominic Elayda.
//  Licensed under The MIT License.
//

import UIKit
import UIKitLivePreview

class ViewController: UIViewController {
    
    private var label: UILabel = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        view.addSubview(label)
        
        setupConstraints()
        
        label.text = "Hello, world!"
        label.font = UIFont.systemFont(ofSize: 17)
    }
    
    private func setupConstraints() {
        label.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            label.centerXAnchor.constraint(
                equalTo: view.safeAreaLayoutGuide.centerXAnchor,
                constant: 0),
            label.centerYAnchor.constraint(
                equalTo: view.safeAreaLayoutGuide.centerYAnchor,
                constant: 0),
        ])
    }
    
}

#if DEBUG && canImport(SwiftUI)
import SwiftUI

@available(iOS 13.0, *)
struct ViewController_Preview: PreviewProvider {
    static var previews: some View {
        ViewController()
            .preview()
        
        ViewController()
            .preview()
            .landscape()
            .previewDisplayName("Landscape Preview")
        
    }
}
#endif
