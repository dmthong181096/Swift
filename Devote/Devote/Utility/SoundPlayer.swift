//
//  SoundPlayer.swift
//  Devote
//
//  Created by Thong Doan on 08/01/2023.
//

import Foundation
import AVFoundation

var audioPlayer: AVAudioPlayer?

func playSound(sound: String, type: String) {
    if let path = Bundle.main.path(forResource: sound, ofType: type){
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
            audioPlayer?.play()
        }catch {
            print("PLAY SOUND ERROR")
        }
    }
}
