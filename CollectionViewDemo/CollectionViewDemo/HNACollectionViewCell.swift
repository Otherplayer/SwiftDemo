//
//  HNACollectionViewCell.swift
//  CollectionViewDemo
//
//  Created by __无邪_ on 2016/10/11.
//  Copyright © 2016年 __无邪_. All rights reserved.
//

import UIKit




class HNACollectionViewCell: UICollectionViewCell {
    var titleLabel : UILabel!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.titleLabel = UILabel.init(frame: CGRect.init(x: 0, y: 0, width: frame.size.width, height: frame.size.height))
        self.titleLabel.textAlignment = NSTextAlignment.center
        self.contentView.addSubview(self.titleLabel)
        
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
