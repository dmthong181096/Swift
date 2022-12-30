//
//  VideoPlayerView.swift
//  Africa
//
//  Created by FE-Minh Thong on 30/12/2022.
//

import SwiftUI
import AVKit
struct VideoPlayerView: View {
    var video: Video
    var body: some View {
        VStack{
            VideoPlayer(player: playVideo(fileName: video.id, fileFormat: "mp4"))
        }.overlay(alignment: .topLeading, content: {
            Image("logo")
                .resizable()
                .scaledToFit()
                .frame(height: 40)
                .padding(.leading,20)
                
        })
            
        .navigationTitle(video.name)
            .navigationBarTitleDisplayMode(.inline)

        
        
        
    }
}

struct VideoPlayerView_Previews: PreviewProvider {
    static var videos: [Video] = Bundle.main.decode("videos.json")
    static var previews: some View {
        
        VideoPlayerView(video: videos[1])
    }
}
