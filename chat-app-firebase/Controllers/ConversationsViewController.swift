//
//  ViewController.swift
//  chat-app-firebase
//
//  Created by MIN SEONG KIM on 2021/08/19.
//

import UIKit
import SnapKit
import SwiftUI

struct ConversationVCPreView:PreviewProvider {
    static var previews: some View {
        ConversationsViewController().toPreview()
    }
}

class ConversationsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .red
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        let isLoggedIn = UserDefaults.standard.bool(forKey: "logged_in")
        
        if !isLoggedIn {
            let vc = LoginViewController()
            let nav = UINavigationController(rootViewController: vc)
            nav.modalPresentationStyle = .fullScreen
            present(nav, animated: false, completion: nil)
        }
    }


}

