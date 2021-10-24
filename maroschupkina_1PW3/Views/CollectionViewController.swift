//
//  CollectionViewController.swift
//  maroschupkina_1PW3
//
//  Created by Marina Roshchupkina on 11.10.2021.
//

import UIKit
final class CollectionViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    private var collection: UICollectionView!
    let cellId = "myCell"
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 100
    }
    
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print(indexPath.row)
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath) as! CollectionCell
        cell.layer.cornerRadius = 15
        cell.layer.masksToBounds = true
        
        return cell
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .magenta
        setupCollectionView()
        // Do any additional setup after loading the view.
    }
    
    private func setupCollectionView(){
        let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        layout.sectionInset = UIEdgeInsets(top: 50, left: 50, bottom: 25, right: 50)
        layout.itemSize = CGSize(width: view.frame.width - 150, height: view.frame.height / 9)
        layout.scrollDirection = .horizontal
        
        let rect = CGRect(x: 15, y: 15, width: view.frame.width - 30, height: view.frame.height - 30)
        
        collection = UICollectionView(frame: rect, collectionViewLayout: layout) // self.view.frame
        collection.dataSource = self
        collection.delegate = self
        
        collection.register(CollectionCell.self, forCellWithReuseIdentifier: cellId)
        collection.showsVerticalScrollIndicator = true
        collection.backgroundColor = UIColor.clear
        collection.translatesAutoresizingMaskIntoConstraints = false //
        collection.layer.cornerRadius = 35
        collection.layer.masksToBounds = true
        
        self.view.addSubview(collection)
    }


}
