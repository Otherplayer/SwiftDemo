//
//  ViewController.swift
//  CollectionViewDemo
//
//  Created by __无邪_ on 2016/10/11.
//  Copyright © 2016年 __无邪_. All rights reserved.
//

import UIKit


let Identifier = "Identifier"

class ViewController: UIViewController ,UICollectionViewDataSource,UICollectionViewDelegate,UICollectionViewDataSourcePrefetching{

    
    var datas : NSMutableArray!
    var collectionView : UICollectionView!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        let screenSize = UIScreen.main.bounds.size
        
        self.datas = NSMutableArray.init()
        for  i in 1...100 {
            self.datas.add(i)
        }
        
        let layout = UICollectionViewFlowLayout()
        layout.itemSize = CGSize.init(width: 100, height: 100)
        layout.minimumLineSpacing = 10.0  //上下间隔
        layout.minimumInteritemSpacing = 5.0 //左右间隔
        layout.headerReferenceSize = CGSize(width:20,height:20)
        layout.footerReferenceSize = CGSize(width:20,height:20)
        
        self.collectionView = UICollectionView.init(frame: CGRect.init(x: 0, y: 0, width: screenSize.width, height: screenSize.height), collectionViewLayout: layout)
        self.view.addSubview(self.collectionView)
        self.collectionView.backgroundColor = UIColor.white
        
        self.collectionView.delegate = self
        self.collectionView.dataSource = self
        self.collectionView.prefetchDataSource = self
        
        self.collectionView.register(HNACollectionViewCell.self, forCellWithReuseIdentifier: Identifier)
        
        self.collectionView.reloadData()
        
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        NSLog("Cell at : \(indexPath.row) was selected")
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.datas.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: Identifier, for: indexPath) as! HNACollectionViewCell
        cell.backgroundColor = UIColor.lightGray
        cell.titleLabel.text = NSString.init(format: "\(self.datas[indexPath.row])" as NSString) as String
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, prefetchItemsAt indexPaths: [IndexPath]){
        NSLog("===== \(indexPaths)")
    }
    
    
    


}

