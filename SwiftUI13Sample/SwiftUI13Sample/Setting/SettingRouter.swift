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
        let viewModel = SettingViewModel(interactor: SettingInteractor(),
                                         settingListBuilder: SettingListBuilder())
        viewController = UIHostingController(rootView: SettingView(viewModel: viewModel))
        let titleView = UIHostingController(rootView: NavigationTitleView()).view
        titleView?.backgroundColor = .clear
        viewController.navigationItem.titleView = titleView
    }
}
