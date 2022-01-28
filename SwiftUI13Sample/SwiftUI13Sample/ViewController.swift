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

        // ナビゲーションバーの色(iOS15以降はデフォルトで透明になってしまうため)
        if #available(iOS 15, *) {
            let appearance = UINavigationBarAppearance()
            appearance.configureWithOpaqueBackground()
            appearance.backgroundColor = .systemGroupedBackground
            navigationController?.navigationBar.standardAppearance = appearance
            navigationController?.navigationBar.scrollEdgeAppearance = appearance

        }
    }

    @IBAction func buttonDidTouchUpInside(_ sender: Any) {
        navigationController?.pushViewController(SettingRouter().viewController, animated: true)
    }
}
