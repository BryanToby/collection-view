//
//  CollectionViewController.swift
//  CollectionViewTutorial
//
//  Created by Bryan Lazaro Cusihuamán on 21/07/16.
//  Copyright © 2016 Bryan Lazaro Cusihuamán. All rights reserved.
//

import UIKit

private let reuseIdentifier = "cell"

class CollectionViewController: UICollectionViewController {
    
    var listLabel = [String]()
    var listImage = [String]()


    override func viewDidLoad() {
        super.viewDidLoad()

        listLabel = ["sniper","shaman","tauren"]
        listImage = ["sniper","shaman","tauren"]
    }

    
    override func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return 1
    }

    override func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return listLabel.count
    }

    override func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("cell", forIndexPath: indexPath) as! UICollectionViewCell
    
        
        let imageView = cell.viewWithTag(1) as! UIImageView
        imageView.image = UIImage(named:listImage[indexPath.row])
        
        
        let labelText = cell.viewWithTag(2) as! UILabel
        labelText.text = listLabel[indexPath.row]
        
        return cell
    }

}
