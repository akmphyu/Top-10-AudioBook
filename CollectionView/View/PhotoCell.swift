//
//  PhotoCell.swift
//  CollectionView
//
//  Created by Aye Kaung Mya Phyu on 27/9/18.
//  Copyright © 2018 Aye Kaung Mya Phyu. All rights reserved.
//

import UIKit

class PhotoCell: UICollectionViewCell {
    @IBOutlet var bookImage: UIImageView!
    @IBOutlet var bookLable: UILabel!
    
    func displayContent(image: UIImage, title: String){
        bookImage.image = image
        bookLable.text = title
    }
}
