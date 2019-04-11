//
//  ViewController.swift
//  Music
//
//  Created by 瓜生理世 on 2019/03/31.
//  Copyright © 2019 瓜生理世. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var audioPlayer: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func natsuButton() {
        setAudioPlayer(soundName: "natsu", type: "mp3")
        audioPlayer.play()
    }
    @IBAction func ameButton() {
        setAudioPlayer(soundName: "ame", type: "mp3")
        audioPlayer.play()
        
    }
    @IBAction func akiButton() {
        setAudioPlayer(soundName: "aki", type: "mp3")
        audioPlayer.play()
        
    }
    
    func setAudioPlayer(soundName: String, type: String){
        //再生する音楽のURLを生成
        let soundFilePath = Bundle.main.path(forResource: soundName, ofType: type)!
        let fileURL = URL(fileURLWithPath: soundFilePath)
        
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: fileURL)
        }
        catch {
           print("音楽ファイルが読み込めませんでした")
        }
}

}
