//
//  PostTableViewCell.swift
//  Continuum
//
//  Created by Bryce Bradshaw on 5/14/20.
//  Copyright © 2020 trevorAdcock. All rights reserved.
//

import UIKit

class PostTableViewCell: UITableViewCell {

    // MARK: - Outlets
    @IBOutlet weak var postImageView: UIImageView!
    @IBOutlet weak var captionLabel: UILabel!
    @IBOutlet weak var commentsLabel: UILabel!
    
    // MARK: - Properties
    var post: Post? {
        didSet {
            updateViews()
        }
    }
    
    // MARK: - Helper Methods
    func updateViews() {
        postImageView.image = post?.photo
        captionLabel.text = post?.caption
        commentsLabel.text = "Comments: \(post?.comments.count ?? 0)"
    }
}
