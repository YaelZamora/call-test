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
        let agview = AgoraVideoViewer(connectionData: AgoraConnectionData(appId: "eaa38390cf1e4cd1abe91ee18a453250", rtcToken: "007eJxTYKiY9OSujsCLaZt37GISfXr+Y4uHwpnmvV4Xd1S+7746w/OJAkNqYqKxhbGlQXKaYapJcophYlKqpWFqqqFFoompsZGpgbTLyZSGQEaG5lBBBkYoBPG5GXwyy1KdMxLz8lJzGBgAPtskgg=="))
        agview.fills(view: self.view)
        agview.join(channel: "LiveChannel", as: .broadcaster)
    }

    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
    }
}

//cdcab36a6cbf4ca9b2bc959bd1799540
