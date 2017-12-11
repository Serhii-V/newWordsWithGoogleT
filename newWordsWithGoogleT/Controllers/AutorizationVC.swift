//
//  ViewController.swift
//  newWordsWithGoogleT
//
//  Created by Serhii on 12/11/17.
//  Copyright © 2017 Serhii. All rights reserved.
//

import UIKit
import GoogleSignIn
import Google

class AutorizationVC: UIViewController, GIDSignInUIDelegate, GIDSignInDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()

        var error: NSError?
        GGLContext.sharedInstance().configureWithError(&error)

        if error != nil {
            print(error!)
            return
        }

        GIDSignIn.sharedInstance().uiDelegate = self
        GIDSignIn.sharedInstance().delegate = self


        let signInButton = GIDSignInButton(frame: CGRect(x: 0, y: 0, width: 200, height: 100))
        signInButton.center = view.center

        view.addSubview(signInButton)
    }

    func sign(_ signIn: GIDSignIn!, didSignInFor user: GIDGoogleUser!, withError error: Error!) {
        print("User ========================= \(user.profile.email)")


        if error != nil {
            print(error)
            return
        }
        
        self.performSegue(withIdentifier: "googleSigIn", sender: self)
    }


}


