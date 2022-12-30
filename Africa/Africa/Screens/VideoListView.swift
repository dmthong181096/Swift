//
//  VideoListView.swift
//  Africa
//
//  Created by FE-Minh Thong on 28/12/2022.
//

import SwiftUI

struct VideoListView: View {
    @State private var videos: [Video] = Bundle.main.decode("videos.json")
    let hapticsImpact = UIImpactFeedbackGenerator(style: .medium)
    var body: some View {
        NavigationView {
            List {
                ForEach(videos) { video in
                    VideoListItemView(video: video)
                }
                
            }.padding( .horizontal,-20)
                .navigationBarTitle("Videos",displayMode: .inline)
               
                .navigationBarItems(trailing:
                    Button(action: {
                    //shuffle video
                        videos.shuffle()
                    hapticsImpact.impactOccurred()
                    }, label: {
                        Image(systemName: "arrow.2.squarepath")
                        .foregroundColor(.accentColor)
                    })
                                        
                   
                )
                .listStyle(InsetGroupedListStyle())
        }
        
    }
}

struct VideoListView_Previews: PreviewProvider {
    static var previews: some View {
        VideoListView()
    }
}
