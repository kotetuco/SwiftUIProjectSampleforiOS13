//
//  ColumnView.swift
//  SwiftUI13Sample
//
//  Created by kotetu on 2022/01/28.
//

import Combine
import SwiftUI

struct ColumnView: View {
    @State private var flag = true
    @ObservedObject var viewModel: SettingViewModel

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
