//
//  PostController.swift
//  Continuum
//
//  Created by Bryce Bradshaw on 5/14/20.
//  Copyright © 2020 trevorAdcock. All rights reserved.
//

import Foundation
import UIKit

class PostController {
    
    // MARK: - Singleton
    static let shared = PostController()
    
    // MARK: - Source of truth
    var posts: [Post] = []
    
    // MARK: - CRUD
    func addComment(text: String, post: Post, completion: @escaping (Result<Comment, PostError>) -> Void) {
        
        let commentToAdd = Comment(text: text, post: post)
        post.comments.append(commentToAdd)
    }
    
    func createPostWith(image: UIImage, caption: String, completion: @escaping (Result<Post?, PostError>)-> Void) {
    
        let postToAppend = Post(caption: caption, photoData: nil, photo: image)
        posts.append(postToAppend)
    }
    
} // End of class
