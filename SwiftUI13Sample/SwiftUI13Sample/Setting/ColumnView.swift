//
//  ColumnView.swift
//  SwiftUI13Sample
//
//  Created by Toru Kuriyama on 2022/01/28.
//

import SwiftUI

struct ColumnView: View {
    @State private var flag = true

    private let label: String

    init(_ label: String) {
        self.label = label
    }

    var body: some View {
        Toggle(isOn: $flag) {
            Text(label)
        }
    }
}

struct ColumnView_Previews: PreviewProvider {
    static var previews: some View {
        ColumnView("Label")
    }
}
