//
//  TableViewController.swift
//  maroschupkina_1PW3
//
//  Created by Marina Roshchupkina on 11.10.2021.
//

import UIKit
class TableViewController: UIViewController {
    private var alarms: [AlarmView] = []
    var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTableView()
        for _ in 0...100 { alarms.append(
            AlarmView())
        }
        // Do any additional setup after loading the view.
    }
    private func setupTableView() {
        let rect = CGRect(x: 0, y: 15, width: view.frame.width, height: view.frame.height - 30)
        
        tableView = UITableView(frame: rect)
        tableView.register(TableCell.self, forCellReuseIdentifier: "tableCell")
        tableView.dataSource = self
        tableView.delegate = self
        
        tableView.backgroundColor = UIColor.white
        tableView.rowHeight = 80
        tableView.showsVerticalScrollIndicator = true
        tableView.translatesAutoresizingMaskIntoConstraints = false //
        tableView.layer.cornerRadius = 35
        tableView.layer.masksToBounds = true
        
        self.view.addSubview(tableView)
    }
    
    
    
}
extension TableViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection
                    section: Int) -> Int {
        alarms.count
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        1
    }
}

extension TableViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath:
                    IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(
            withIdentifier: "tableCell",
            for: indexPath
        ) as? TableCell
        //cell?.setupEye()
        return cell ?? UITableViewCell()
    }
}
