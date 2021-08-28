//
//  ViewController.swift
//  chat-app-firebase
//
//  Created by MIN SEONG KIM on 2021/08/19.
//

import UIKit
import SnapKit
import SwiftUI
import FirebaseAuth

struct ConversationVCPreView:PreviewProvider {
    static var previews: some View {
        ConversationsViewController().toPreview()
    }
}

class ConversationsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
       
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        validateAuth()
    }
    
    private func validateAuth() {
        
        if Auth.auth().currentUser == nil {
            let vc = LoginViewController()
            let nav = UINavigationController(rootViewController: vc)
            nav.modalPresentationStyle = .fullScreen
            present(nav, animated: false, completion: nil)
        }
    }


}

