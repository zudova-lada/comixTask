//
//  ComixCollectionViewCell.swift
//  Comix
//
//  Created by Лада on 02/12/2019.
//  Copyright © 2019 Лада. All rights reserved.
//

import UIKit

class ComixCollectionViewCell: UICollectionViewCell {
    
    
    let comixImageView: UIImageView = {
        let image = UIImageView()
        image.image = UIImage()
        image.backgroundColor = .blue
        return image
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    
        comixImageView.frame = CGRect(x: 0, y: 0, width: frame.width, height: frame.height)
        contentView.addSubview(comixImageView)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        self.accessibilityContainerType = .none;
        self.comixImageView.image = nil;
    }
}
