//
//  redirectVCExtension.swift
//  newWordsWithGoogleT
//
//  Created by Serhii on 12/11/17.
//  Copyright © 2017 Serhii. All rights reserved.
//

import Foundation
import UIKit

extension UIViewController {

    func redirect(to destination: String, sender: AnyObject!) {
        performSegue(withIdentifier: description , sender: sender)
    }
}
