//
//  MoreVC.swift
//  newWordsWithGoogleT
//
//  Created by Serhii on 12/11/17.
//  Copyright © 2017 Serhii. All rights reserved.
//

import UIKit
import Google
import GoogleSignIn

class MoreVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func logOutButtonPressed(_ sender: UIButton) {
        GIDSignIn.sharedInstance().signOut()
        self.performSegue(withIdentifier: "logOut", sender: self)
    }
}
