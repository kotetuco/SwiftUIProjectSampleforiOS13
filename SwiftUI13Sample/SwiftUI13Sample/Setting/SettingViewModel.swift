//
//  SettingViewModel.swift
//  SwiftUI13Sample
//
//  Created by kotetu on 2022/02/08.
//

import Foundation

final class SettingViewModel: ObservableObject {
    private let interactor: SettingInteractorInterface

    @Published var settingGroups: [SettingGroup]

    init(interactor: SettingInteractorInterface, settingListBuilder: SettingListBuilderInterface) {
        self.interactor = interactor
        self.settingGroups = settingListBuilder.build()
    }
}
