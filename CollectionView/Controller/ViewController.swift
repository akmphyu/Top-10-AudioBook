//
//  ViewController.swift
//  CollectionView
//
//  Created by Aye Kaung Mya Phyu on 27/9/18.
//  Copyright © 2018 Aye Kaung Mya Phyu. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {

    @IBOutlet weak var collectionView: UICollectionView!
    let store = DataService.instance
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.delegate = self
        store.getBookImages {
            self.collectionView.reloadSections(IndexSet(integer: 0))
        }
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return store.audiobooks.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "PhotoCell", for: indexPath) as? PhotoCell else { return UICollectionViewCell()}
        let book = store.audiobooks[indexPath.row]
        cell.displayContent(image: store.images[indexPath.row], title: book.name)
        return cell
    }

}

