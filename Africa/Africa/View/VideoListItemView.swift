//
//  VideoListItemView.swift
//  Africa
//
//  Created by FE-Minh Thong on 30/12/2022.
//

import SwiftUI

struct VideoListItemView: View {
    var video: Video
    var body: some View {
        HStack(spacing: 10) {
            NavigationLink(destination: VideoPlayerView(video: video), label: {
                ZStack {
                    Image(video.thumbnail)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 100,height: 100)
                        .clipShape(
                            RoundedRectangle(cornerRadius: 12)
                    )
                    Image(systemName: "play.circle")
                        .resizable()
                        .scaledToFit()
                        .frame(height: 32)
                        .clipShape(
                            RoundedRectangle(cornerRadius: 12)
                    )
                }
                VStack (alignment: .leading, spacing: 10){
                    Text(video.name)
                        .font(.title)
                        .fontWeight(.heavy)
                        .foregroundColor(.accentColor)
                    Text(video.headline)
                        .font(.footnote)
                        .multilineTextAlignment(.leading)
                        .lineLimit(2)
                }
                Spacer()
            })

        }
    }
}

struct VideoListItemView_Previews: PreviewProvider {
    static var videos: [Video] =  Bundle.main.decode("videos.json")
    static var previews: some View {
        VideoListItemView(video: videos[1]).previewLayout(.sizeThatFits)
    }
}
