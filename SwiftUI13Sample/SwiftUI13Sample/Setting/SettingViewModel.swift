//
//  SettingViewModel.swift
//  SwiftUI13Sample
//
//  Created by kotetu on 2022/02/08.
//

import Foundation

final class SettingViewModel: ObservableObject {
    private let interactor: SettingInteractorInterface
    private let builder: SettingListBuilderInterface

    @Published var settingGroups: [SettingGroup]

    init(interactor: SettingInteractorInterface, builder: SettingListBuilderInterface) {
        self.interactor = interactor
        self.builder = builder
        self.settingGroups = []
    }

    func onAppear() {
        settingGroups = builder.build()
    }

    func onDisappear() {
    }
}
