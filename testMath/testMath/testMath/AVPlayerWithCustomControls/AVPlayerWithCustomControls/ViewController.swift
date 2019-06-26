//
//  ViewController.swift
//  AVPlayerWithCustomControls
//
//  Created by Sowri Rajan on 26/06/19.
//  Copyright © 2019 Sowri Rajan. All rights reserved.
//

import UIKit
import AVKit

class ViewController: UIViewController {
    @IBOutlet weak var bgView: UIView!
    var isLocalPlayLocalVideo = false
    var playerItem:AVPlayerItem?
    var player:AVPlayer?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        playVideo()
    }
    func playVideo() {
        let videoUrl: URL!
        if isLocalPlayLocalVideo {
            guard let path = Bundle.main.path(forResource: "SampleVideo", ofType: "mp4") else {
                return
            }
            videoUrl = URL(fileURLWithPath: path)
            
        } else {
            guard let url = URL(string: "https://clips.vorwaerts-gmbh.de/big_buck_bunny.mp4") else {
                print("Cannot convert to the URL")
                return
            }
            videoUrl = url
        }
        playerItem = AVPlayerItem(url: videoUrl)
        player = AVPlayer(url: videoUrl)
        let playerLayer = AVPlayerLayer(player: player)
        playerLayer.frame = self.bgView.bounds
        
        let playbackSlider = UISlider(frame:CGRect(x:10, y:300, width:300, height:20))
        playbackSlider.minimumValue = 0
        
        
        let duration : CMTime = playerItem!.asset.duration
        let seconds : Float64 = CMTimeGetSeconds(duration)
        
        playbackSlider.maximumValue = Float(seconds)
        playbackSlider.isContinuous = true
        playbackSlider.tintColor = UIColor.green
        
        playbackSlider.addTarget(self, action: #selector(ViewController.playbackSliderValueChanged(_:)), for: .valueChanged)
        // playbackSlider.addTarget(self, action: "playbackSliderValueChanged:", forControlEvents: .ValueChanged)
        self.bgView.addSubview(playbackSlider)
        
        self.bgView.layer.addSublayer(playerLayer)
        player!.play()
        
    }
    
    @objc func playbackSliderValueChanged(_ playbackSlider:UISlider)
    {
        let seconds : Int64 = Int64(playbackSlider.value)
        let targetTime:CMTime = CMTimeMake(value: seconds, timescale: 1)
        playerItem!.seek(to: targetTime)
        if player!.rate == 0
        {
            player?.play()
        }
    }


}

