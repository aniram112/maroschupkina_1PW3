//
//  TableCell.swift
//  maroschupkina_1PW3
//
//  Created by Marina Roshchupkina on 24.10.2021.
//

import UIKit
class TableCell: UITableViewCell {
    
    var alarm: AlarmView!
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: .subtitle, reuseIdentifier: reuseIdentifier)
        self.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        self.alarm = AlarmView(frame: self.bounds)
        addSubview(alarm)
        alarm.autoresizingMask = self.autoresizingMask
        self.accessoryView = alarm.toggle
        self.accessoryView?.pinRight(to: self, 20)
        self.accessoryView?.pinTop(to: self, 20)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override func prepareForReuse() {
        for subview in subviews {
            if subview is AlarmView {
                //subview.removeFromSuperview()
            }
        }
    }
    
}


