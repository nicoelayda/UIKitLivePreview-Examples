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
            .device(.iPhone13Pro)
        
        ViewController()
            .preview()
            .landscape()
            .previewDisplayName("iPhone 13 Pro Max Landscape Preview")
            .device(.iPhone13ProMax)
        
        ViewController()
            .preview()
            .device(.iPadMini_6thGen)
        
        ViewController()
            .preview()
            .device(.iPadPro11_3rdGen)
        
        ViewController()
            .preview()
            .device(.iPadPro12_9_5thGen)
    }
}
#endif
