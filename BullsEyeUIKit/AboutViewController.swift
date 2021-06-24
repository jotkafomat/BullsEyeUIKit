//
//  AboutViewController.swift
//  BullsEyeUIKit
//
//  Created by Krzysztof Jankowski on 23/06/2021.
//

import UIKit
import WebKit

class AboutViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let url = Bundle.main.url(
            forResource: "BullsEye", withExtension: "html") {
            print(url)
            let request = URLRequest(url: url)
            print(request)
            webView.load(request)
        }
    }
    
    @IBAction func close() {
        dismiss(animated: true, completion: nil)
    }
    
    @IBOutlet var webView: WKWebView!
    
    
}
