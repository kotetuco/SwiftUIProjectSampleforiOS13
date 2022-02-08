//
//  ColumnView.swift
//  SwiftUI13Sample
//
//  Created by kotetu on 2022/01/28.
//

import SwiftUI

struct ColumnView: View {
    private var isOn: Binding<Bool>
    private let label: String

    init(label: String, isOn: Binding<Bool>) {
        self.label = label
        self.isOn = isOn
    }

    var body: some View {
        Toggle(isOn: isOn) {
            Text(label)
        }
        
    }
}

struct ColumnView_Previews: PreviewProvider {
    static var previews: some View {
        ColumnView(label: "設定1", isOn: .constant(true))
            .preferredColorScheme(.dark)
            .previewLayout(.sizeThatFits)
        ColumnView(label: "設定2", isOn: .constant(false))
            .preferredColorScheme(.light)
            .previewLayout(.sizeThatFits)
    }
}
