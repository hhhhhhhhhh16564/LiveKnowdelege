//
//  ViewController.swift
//  03-iOS实现推流
//
//  Created by 小码哥 on 2016/12/24.
//  Copyright © 2016年 xmg. All rights reserved.
//

import UIKit
import LFLiveKit

class ViewController: UIViewController {
    
    lazy var session: LFLiveSession = {
        let audioConfiguration = LFLiveAudioConfiguration.default()
        let videoConfiguration = LFLiveVideoConfiguration.defaultConfiguration(for: .low2, outputImageOrientation: .portrait)
        let session = LFLiveSession(audioConfiguration: audioConfiguration, videoConfiguration: videoConfiguration)
        session?.preView = self.view
        return session!
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func startRunning() {
        let stream = LFLiveStreamInfo()
        stream.url = "rtmp://59.110.27.24/live/demo";
        session.startLive(stream)
        
        session.running = true
    }
}

