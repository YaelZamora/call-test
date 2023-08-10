//
//  ViewController.swift
//  call
//
//  Created by Yael Javier Zamora Moreno on 25/07/23.
//

import UIKit
import AgoraUIKit

class ViewController: UIViewController {
    
    var zoomBtn: UIButton!
    var isZoomed: Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let agview = AgoraVideoViewer(connectionData: AgoraConnectionData(appId: "eaa38390cf1e4cd1abe91ee18a453250", rtcToken: "007eJxTYNjSrLyuuEbZ597LEA/Jy/N3cQh8OChcYX1aPW2pws4z4SkKDKmJicYWxpYGyWmGqSbJKYaJSamWhqmphhaJJqbGRqYGs1aeSmkIZGQ4uGAtCyMDBIL43Aw+mWWpzhmJeXmpOQwMAD2AIsw="))
        
        agview.fills(view: self.view)
        agview.join(channel: "LiveChannel", as: .broadcaster)
        
        zoomBtn = UIButton(type: .system)
        zoomBtn.frame = CGRect(x: 120, y: 650, width: 180, height: 50)
        zoomBtn.setTitle("Zoom In", for: .normal)
        
        //zoomBtn.addTarget(self, action: #selector(zoomBtnClicked), for: .touchUpInside)
        self.view.addSubview(zoomBtn)
    }

    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
    }
}

//cdcab36a6cbf4ca9b2bc959bd1799540
