//
//  SettingView.swift
//  SwiftUI13Sample
//
//  Created by kotetu on 2022/01/28.
//

import SwiftUI

struct SettingView: View {
    @ObservedObject private var viewModel: SettingViewModel

    init(viewModel: SettingViewModel) {
        self.viewModel = viewModel
    }

    var body: some View {
        VStack {
            List {
                ForEach($viewModel.settingGroups) { settingGroup in
                    Section {
                        ForEach(settingGroup.settings) { setting in
                            ColumnView(title: setting.title.wrappedValue,
                                       description: setting.description.wrappedValue,
                                       isOn: setting.isOn)
                        }
                    } header: {
                        Text(settingGroup.sectionTitle.wrappedValue)
                    }
                }
            }
            .listStyle(.grouped)
        }
        .onAppear(perform: {
            print("onAppear")

        })
        .onDisappear {
            print("onDisappear")
        }
    }
}

struct SettingView_Previews: PreviewProvider {
    static var previews: some View {
        SettingView(viewModel: viewModel)
            .preferredColorScheme(.dark)
        SettingView(viewModel: viewModel)
            .preferredColorScheme(.light)
    }

    private static var viewModel: SettingViewModel {
        SettingViewModel(interactor: SettingInteractor(),
                         settingListBuilder: SettingListBuilder())
    }
}
