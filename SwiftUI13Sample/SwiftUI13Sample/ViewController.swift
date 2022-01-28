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
        // 戻るボタンを消す
        navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
    }

    @IBAction func buttonDidTouchUpInside(_ sender: Any) {
        navigationController?.pushViewController(SettingRouter().viewController, animated: true)
    }
}
