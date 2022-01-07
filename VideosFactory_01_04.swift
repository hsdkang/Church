//
//  VideosFactory_01_04.swift
//  Church
//
//  Created by 한상대 on 2022/01/07.
//

import Foundation
import Firebase
import FirebaseAuth
import FirebaseDatabase

class VideosFactory_01_04: ObservableObject {
    
    @ Published var videos: [Video]
    
    init(videos: [Video] = []) {
        self.videos = videos
        let ref = Database.database().reference()

        ref.child("VideoList_01_04").observeSingleEvent(of: .value) { snapshot in
            for case let child as DataSnapshot in snapshot.children {
                guard let dict = child.value as? [String:Any] else {
                    return
                }
                let date = dict["date"] as? String ?? ""
                let preacher = dict["preacher"] as? String ?? ""
                let thumbnail = dict["thumbnail"] as? String ?? ""
                let title = dict["title"] as? String ?? ""
                let url = dict["url"] as? String ?? ""
                self.videos.append(Video(date: date, preacher: preacher, thumbnail: thumbnail, title: title, url: url))
            }
        }
    }
    
    func index(of video: Video) -> Int {
        for index in 0..<self.videos.count {
            if self.videos[index].id == video.id {
                return index
            }
        }
        return 0
    }
}
