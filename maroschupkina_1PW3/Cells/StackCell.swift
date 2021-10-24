//
//  StackCell.swift
//  maroschupkina_1PW3
//
//  Created by Marina Roshchupkina on 21.10.2021.
//

import UIKit
class StackCell: UIView
{
    var alarm: AlarmView!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        self.alarm = AlarmView(frame: self.bounds)
        addSubview(alarm)
        alarm.autoresizingMask = self.autoresizingMask

    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
