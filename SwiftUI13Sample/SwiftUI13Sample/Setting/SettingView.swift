//
//  SettingView.swift
//  SwiftUI13Sample
//
//  Created by kotetu on 2022/01/28.
//

import SwiftUI

struct SettingView: View {
    var body: some View {
        VStack {
            List {
                Section {
                    ColumnView("設定1")
                    ColumnView("設定2")
                } header: {
                    Text("カテゴリー1")
                }
                Section {
                    ColumnView("設定3")
                    ColumnView("設定4")
                } header: {
                    Text("カテゴリー2")
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
        SettingView()
    }
}
