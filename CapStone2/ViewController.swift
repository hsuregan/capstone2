//
//  ViewController.swift
//  CapStone2
//
//  Created by Regan Hsu on 9/23/15.
//  Copyright (c) 2015 Regan Hsu. All rights reserved.
//

import UIKit
import AVFoundation
import AssetsLibrary
import MediaPlayer

class ViewController: UIViewController {

  
    @IBOutlet var waveform: SCWaveformView!
    var streamRadio:MPMoviePlayerController!
    var url:NSURL = NSURL(string: "http://stream.uclaradio.com:8000/listen")!

    

    override func viewDidLoad() {
        super.viewDidLoad()
        var filePath = NSBundle.mainBundle().pathForResource("05_The_River", ofType: "mp3")
        var fileUrl = NSURL(fileURLWithPath: filePath!)
        var asset = AVAsset.assetWithURL(fileUrl) as! AVAsset
        self.waveform.asset = asset;
        self.waveform.normalColor = UIColor.greenColor()
        self.waveform.progressColor = UIColor.blackColor()
        self.waveform.progressTime = CMTimeMakeWithSeconds(5, 10000)
        
        //var avPlayerItem = AVPlayerItem(asset: asset)
        //var avPlayer = AVPlayer(URL: "05_The_River.mp3")
        //avPlayer.seekToTime(kCMTimeZero)
        //avPlayer.play()
        
        
//        avAsset = [AVAsset assetWithURL:[NSURL fileURLWithPath:filePath]];
//        avPlayerItem =[[AVPlayerItem alloc]initWithAsset:avAsset];
//        avPlayer = [[AVPlayer alloc]initWithPlayerItem:avPlayerItem];
        
//        avPlayerLayer =[AVPlayerLayer playerLayerWithPlayer:avPlayer];
//        [avPlayerLayer setFrame:self.view.frame];
//        [self.view.layer addSublayer:avPlayerLayer];
//        //[avPlayerLayer setBackgroundColor:[[UIColor redColor]CGColor]];
//        [avPlayer seekToTime:kCMTimeZero];
//        [avPlayer play];


        
        
    }
    
    @IBAction func pause() {
        //in order to stop downoad of data, stop stream totally:
        self.streamRadio.pause()
        //self.streamRadio = nil;
    }
    
    @IBAction func play() {
        self.streamRadio = MPMoviePlayerController(contentURL: url)
        self.streamRadio.play()
        //        for i in 0...200 {
        //            println(audioPlayer.peakPowerForChannel(Int(i)))
        //        }
    }    


}

