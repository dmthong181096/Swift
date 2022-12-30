//
//  VideoPlayerHelper.swift
//  Africa
//
//  Created by FE-Minh Thong on 30/12/2022.
//

import Foundation
import AVKit

var videoPlayer: AVPlayer?

func playVideo(fileName: String, fileFormat: String) -> AVPlayer {
    
    if Bundle.main.url(forResource: fileName, withExtension: fileFormat) != nil {
        videoPlayer = AVPlayer(url: Bundle.main.url(forResource: fileName, withExtension: fileFormat)!)
        videoPlayer?.play()
    }
    return videoPlayer!
}
