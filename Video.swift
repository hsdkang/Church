//
//  Video.swift
//  Church
//
//  Created by 한상대 on 2022/01/07.
//

import Foundation
import SwiftUI

struct Video: Identifiable {
    var id = UUID()
    
    let date: String
    let preacher: String
    let thumbnail: String
    let title: String
    let url: String
}

var arrayVideo = [Video]()

struct VideoCell: View {
    var video: Video
    
    var body: some View {
        HStack{
            Image(systemName: "heart.fill").padding(3).foregroundColor(Color.red)
            VStack{
                HStack{
                    Text(video.date).font(.system(size: 13))
                    Spacer()
                    Text(video.preacher).font(.system(size: 13))
                }
                HStack{
                    Text(video.title).font(.system(size: 20)).foregroundColor(Color.blue)
                    Spacer()
                }
            }
            NavigationLink(destination: MyWebview(urlToLoad: video.url)) {
            }.frame(width: 5, height: 5, alignment: .trailing)
        }
    }
}
