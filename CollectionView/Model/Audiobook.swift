//
//  Audiobook.swift
//  CollectionView
//
//  Created by Aye Kaung Mya Phyu on 27/9/18.
//  Copyright © 2018 Aye Kaung Mya Phyu. All rights reserved.
//

import Foundation

struct  Audiobook {
    let name: String
    let author: String
    let coverImage: String
    
    init(dictionary: AudiobookJSON){
        self.name = dictionary["name"] as! String
        self.author = dictionary["artistName"] as! String
        self.coverImage = dictionary["artworkUrl100"] as! String
    }
}
