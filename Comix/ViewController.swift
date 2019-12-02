//
//  ViewController.swift
//  Comix
//
//  Created by Лада on 02/12/2019.
//  Copyright © 2019 Лада. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var comixCollectionView: UICollectionView!
    let dataSource = ComixDataSource()
    let delegate = ComixCollectionViewDelegateFlowLayout()
    let layout = UICollectionViewFlowLayout()
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        layout.sectionInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        layout.itemSize = CGSize(width: view.frame.width, height: 700)
        layout.scrollDirection = .horizontal
        layout.sectionInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        comixCollectionView =  UICollectionView(frame: CGRect(x: 0, y: 0, width: self.view.bounds.width, height: self.view.bounds.height), collectionViewLayout: layout)
        comixCollectionView.register(ComixCollectionViewCell.self, forCellWithReuseIdentifier: "CardCell")
        comixCollectionView.dataSource = dataSource
        comixCollectionView.delegate = delegate
        comixCollectionView.isPagingEnabled = true
        comixCollectionView.isScrollEnabled = true
        view.backgroundColor = UIColor.red
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        view.backgroundColor = .blue
        view.addSubview(comixCollectionView)
    }
}

