//
//  ViewController.swift
//  call
//
//  Created by Yael Javier Zamora Moreno on 25/07/23.
//

import UIKit
import AgoraUIKit

class ViewController: UIViewController {

    // Fill the App ID of your project generated on Agora Console.
    let appId: String = "eaa38390cf1e4cd1abe91ee18a453250"

    // Fill the temp token generated on Agora Console.
    let token: String? = "007eJxTYFhe3fnJIelCOOtDs0rh3OdL3tp6NfzNrfK0S8zO9TiYsVSBITUx0djC2NIgOc0w1SQ5xTAxKdXSMDXV0CLRxNTYyNSA6/fhlIZARobilfpMjAwQCOKzMJSkFpcwMAAAcu8f7A=="

    // Fill the channel name.
    let channelName: String = "test"

    // Create the view object.
    var agoraView: AgoraVideoViewer!
    
    func initializeAndJoinChannel(){

        agoraView = AgoraVideoViewer(
            connectionData: AgoraConnectionData(
                appId: appId,
                rtcToken: token
            )
        )
        agoraView.fills(view: self.view)

        agoraView.join(
            channel: channelName,
            with: token,
            as: .broadcaster
        )
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        initializeAndJoinChannel()
    }

    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        agoraView.exit()
    }
}

