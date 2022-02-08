//
//  SettingListBuilder.swift
//  SwiftUI13Sample
//
//  Created by kotetu on 2022/02/09.
//

import Foundation

struct SettingGroup: Identifiable {
    var id = UUID()
    var sectionTitle: String
    var settings: [Setting]
}

struct Setting: Identifiable {
    var id = UUID()
    var title: String
    var isOn: Bool
}

protocol SettingListBuilderInterface {
    func build() -> [SettingGroup]
}

final class SettingListBuilder: SettingListBuilderInterface {
    func build() -> [SettingGroup] {
        let settingsInCategory1 = [Setting(title: "設定1", isOn: true),
                                   Setting(title: "設定2", isOn: true)]
        let category1 = SettingGroup(sectionTitle: "カテゴリー1",
                                     settings: settingsInCategory1)
        let settingsInCategory2 = [Setting(title: "設定3", isOn: false),
                                   Setting(title: "設定4", isOn: false)]
        let category2 = SettingGroup(sectionTitle: "カテゴリー2",
                                     settings: settingsInCategory2)
        return [category1, category2]
    }
}
