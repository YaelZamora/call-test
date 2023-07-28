//
//  ViewController.swift
//  call
//
//  Created by Yael Javier Zamora Moreno on 25/07/23.
//

import UIKit
import AgoraUIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let agview = AgoraVideoViewer(connectionData: AgoraConnectionData(appId: "eaa38390cf1e4cd1abe91ee18a453250"))
        agview.fills(view: self.view)
        agview.join(channel: "test", as: .broadcaster)
    }


}

