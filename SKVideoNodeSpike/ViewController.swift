//
//  ViewController.swift
//  SKVideoNodeSpike
//
//  Created by DNA on 7/5/18.
//  Copyright © 2018 DNA. All rights reserved.
//

import UIKit
import SpriteKit
import AVFoundation

class ViewController: UIViewController {
    
    var playerItem:AVPlayerItem?
    var player:AVPlayer?
    var videoNode:SKVideoNode?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let view = self.view as! SKView
        
        let scene = SKScene(size: self.view.frame.size)
        view.presentScene(scene)
        
//        let url = URL(string: "http://kolor.com/360-videos-files/kolor-balloon-icare-full-hd.mp4")!
//        let url = URL(string: "https://www.youtube.com/watch?v=d1JA-nh0IfI")!
        let url = URL(string: "http://www.html5videoplayer.net/videos/toystory.mp4")!
        
        let asset = AVURLAsset.init(url: url)
        
        playerItem = AVPlayerItem(asset: asset)
        player = AVPlayer(playerItem: playerItem)
        
        videoNode = SKVideoNode.init(avPlayer: player!)
        
        videoNode?.position = CGPoint(x: scene.size.width/2, y: scene.size.height/2)
        videoNode?.size = CGSize(width: 300, height: 300)//self.view.frame.size
        
        scene.addChild(videoNode!)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        videoNode?.play()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
