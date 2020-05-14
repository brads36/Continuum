//
//  Post.swift
//  Continuum
//
//  Created by Bryce Bradshaw on 5/13/20.
//  Copyright © 2020 trevorAdcock. All rights reserved.
//

import Foundation
import UIKit

class Post {
    
    var timeStamp: Date
    var caption: String
    var comments: [Comment]
    var photoData: Data?
    var photo: UIImage? {
        get {
            guard let photoData = photoData else { return nil }
            return UIImage(data: photoData)
        } set {
            photoData = newValue?.jpegData(compressionQuality: 0.5)
        }
    }
    
    init(timeStamp: Date = Date(), caption: String, comments: [Comment] = [], photoData: Data?, photo: UIImage?) {
        
        self.timeStamp = timeStamp
        self.caption = caption
        self.comments = comments
        self.photoData = photoData
        self.photo = photo
    }
    
}
