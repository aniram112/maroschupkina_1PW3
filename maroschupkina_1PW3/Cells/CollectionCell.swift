//
//  CollectionCell.swift
//  maroschupkina_1PW3
//
//  Created by Marina Roshchupkina on 24.10.2021.
//

import UIKit
class CollectionCell: UICollectionViewCell
{
    var alarm: AlarmView!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.alarm = AlarmView(frame: self.bounds)
        backgroundColor = UIColor.white
        addSubview(alarm)
        alarm.autoresizingMask = self.autoresizingMask
        alarm.timeLabel.pinTop(to: self, 20)
        alarm.toggle.pinTop(to: self, 30)
        //self.accessoryView?.pinRight(to: self, 20)
        //self.accessoryView?.pinTop(to: self, 20)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}

