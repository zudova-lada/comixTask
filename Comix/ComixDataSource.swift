//
//  ComixDataSource.swift
//  Comix
//
//  Created by Лада on 02/12/2019.
//  Copyright © 2019 Лада. All rights reserved.
//

import UIKit

class ComixDataSource: NSObject, UICollectionViewDataSource {
    let comixArray: [String] = ["Page1", "Page2", "Page3", "Page4", "Page5", "Page6"]
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return comixArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CardCell", for: indexPath) as! ComixCollectionViewCell
        
        cell.comixImageView.image = UIImage(named: comixArray[indexPath.row])
        let frameImageView = cell.comixImageView.frame
        let imageWidth = cell.comixImageView.image!.size.width
        let imageHeiht = cell.comixImageView.image!.size.height
        
        let delta = min(frameImageView.width/imageWidth, frameImageView.height/imageHeiht)
        
        cell.comixImageView.frame = CGRect(x: 0, y: 0, width: imageWidth*delta, height: imageHeiht*delta)
        cell.comixImageView.center = collectionView.center
        return cell
    }
}
