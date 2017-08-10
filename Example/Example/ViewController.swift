//
//  ViewController.swift
//  Example
//
//  Created by Luca Angeletti on 28/07/2017.
//  Copyright © 2017 Luca Angeletti. All rights reserved.
//

import UIKit
import FireworksKit

class TableViewController: UITableViewController {

    private var fireworksView: FireworksView?
    private var mode = Mode.light

    private var selectedIndexEffect: IndexPath?
    private var selectedIndexColor: IndexPath?
    
    private var selectedIndexes: [IndexPath] {
        return [self.selectedIndexEffect, self.selectedIndexColor].flatMap { $0 }
    }

    private let sectionTitles = ["Effects", "Colors"]

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.tableFooterView = UIView()
        guard let navigationController = navigationController else { return }
        let fireworksView = FireworksView(frame: navigationController.view.frame)
        navigationController.view.addSubview(fireworksView)
        self.fireworksView = fireworksView
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return sectionTitles.count
    }

    override func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
        guard let headerView = view as? UITableViewHeaderFooterView else { return }
        headerView.textLabel?.textAlignment = .center
        
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return sectionTitles[section]
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0:
            return ParticleEffectType.all.count
        case 1:
            return Color.all.count
        default: fatalError()
        }
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: mode.cellID)!
        cell.accessoryType = selectedIndexes.contains(indexPath) ? .checkmark : .none
        switch indexPath.section {
        case 0:
            cell.textLabel?.text = ParticleEffectType.all[indexPath.row].rawValue
        case 1:
            cell.textLabel?.text = Color.all[indexPath.row].rawValue
        default: fatalError()
        }
        return cell
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        switch indexPath.section {
        case 0:
            selectedIndexEffect = indexPath
            fireworksView?.particleEffect = ParticleEffect(type: ParticleEffectType.all[indexPath.row])
            selectedIndexColor = nil
            tableView.reloadSections([0, 1], with: .automatic)
        case 1:
            selectedIndexColor = indexPath
            fireworksView?.particleEffect?.particleColor = Color.all[indexPath.row].value
            tableView.reloadSections([1], with: .automatic)
        default: fatalError()
        }
    }

    @IBAction func didTapDarkUIButton(_ sender: UIBarButtonItem) {
        mode = .dark
        tableView.backgroundColor = UIColor(colorLiteralRed: 23.0 / 255, green: 23.0 / 255, blue: 23.0 / 255, alpha: 1)
        navigationController?.navigationBar.barTintColor = UIColor(colorLiteralRed: 41.0 / 255, green: 41.0 / 255, blue: 41.0 / 255, alpha: 1)
        
        navigationController?.navigationBar.isTranslucent = false
        tableView.separatorColor = .darkGray
        tableView.reloadData()
        

    }

    @IBAction func didTapLightUIButton(_ sender: UIBarButtonItem) {
        mode = .light
        tableView.backgroundColor = .white
        navigationController?.navigationBar.barTintColor = .white
        navigationController?.navigationBar.isTranslucent = true
        tableView.separatorColor = nil
        tableView.reloadData()
    }

    enum Mode:String {
        case light, dark
        var cellID: String { return self.rawValue + "Cell"  }
    }
}


