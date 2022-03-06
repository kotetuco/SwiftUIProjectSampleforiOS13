//
//  ColumnView.swift
//  SwiftUI13Sample
//
//  Created by kotetu on 2022/01/28.
//

import SwiftUI

struct ColumnView: View {
    private var isOn: Binding<Bool>
    private let title: String
    private let description: String

    init(title: String, description: String, isOn: Binding<Bool>) {
        self.title = title
        self.description = description
        self.isOn = isOn
    }

    var body: some View {
        HStack {
            VStack {
                Text(title)
                    .frame(maxWidth: .infinity, alignment: .leading)
                Text(description)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .font(.caption)
            }
            Toggle(isOn: isOn) {}
        }
    }
}

struct ColumnView_Previews: PreviewProvider {
    static var previews: some View {
        ColumnView(title: "設定1", description: "設定に関する説明を表示します。", isOn: .constant(true))
            .previewDisplayName("ダークモード表示")
            .preferredColorScheme(.dark)
            .previewLayout(.sizeThatFits)
        ColumnView(title: "設定2", description: "設定に関する説明を表示します。", isOn: .constant(false))
            .previewDisplayName("ライトモード表示")
            .preferredColorScheme(.light)
            .previewLayout(.sizeThatFits)
    }
}
