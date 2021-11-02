//
//  ViewController.swift
//  ViewCodeOne
//
//  Created by Vitor Lentos on 02/11/21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func loadView() {
        //load view here
    }


}

//@available(iOS 13, *)
#if canImport(SwiftUI) && DEBUG
import SwiftUI

struct UIViewControllerPreview<ViewController: UIViewController>: UIViewControllerRepresentable {
    let viewController: ViewController
    
    init(_ viewController: ViewController) {
        self.viewController = viewController
    }
    
    func makeUIViewController(context: Context) -> UIViewController {
        viewController
    }
    
    func updateUIViewController(_ uiViewController: UIViewController, context: Context) {
        
    }
    
}

#endif

struct ViewControllerPreviews: PreviewProvider {
    static var previews: some View {
        UIViewControllerPreview(ViewController()
        )
    }
}

