//
//  SettingRouter.swift
//  SwiftUI13Sample
//
//  Created by kotetu on 2022/01/28.
//

import SwiftUI
import UIKit

final class SettingRouter {
    let viewController: UIViewController

    init() {
        viewController = UIHostingController(rootView: SettingView())
        let titleView = UIHostingController(rootView: NavigationTitleView()).view
        titleView?.backgroundColor = .clear
        viewController.navigationItem.titleView = titleView
    }
}
