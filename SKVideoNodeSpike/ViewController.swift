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
        
        
        let url = URL(string: "https://www.youtube.com/watch?v=d1JA-nh0IfI")!

        let asset = AVURLAsset.init(url: url)
        
        playerItem = AVPlayerItem(asset: asset)
        player = AVPlayer(playerItem: playerItem)
        
        videoNode = SKVideoNode.init(avPlayer: player!)
        
//        let url = Bundle.main.url(forResource: "sample", withExtension: "mp4")!
//        videoNode = SKVideoNode.init(url: url)
        
        videoNode?.position = CGPoint(x: scene.size.width/2, y: scene.size.height/2)
        
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
