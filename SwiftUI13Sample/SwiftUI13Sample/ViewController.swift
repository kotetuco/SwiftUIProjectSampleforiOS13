//
//  ViewController.swift
//  SwiftUI13Sample
//
//  Created by kotetu on 2022/01/28.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet private weak var button: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func buttonDidTouchUpInside(_ sender: Any) {
        navigationController?.pushViewController(SettingRouter().viewController, animated: true)
    }
}
