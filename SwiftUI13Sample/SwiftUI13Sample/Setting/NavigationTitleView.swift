//
//  NavigationTitleView.swift
//  SwiftUI13Sample
//
//  Created by kotetu on 2022/01/28.
//

import SwiftUI

struct NavigationTitleView: View {
    var body: some View {
        VStack {
            Text("Title")
                .fontWeight(.semibold)
            Text("Sub title")
                .fontWeight(.thin)
        }
    }
}

struct NavigationTitleView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationTitleView()
            .preferredColorScheme(.dark)
            .previewLayout(.sizeThatFits)
        NavigationTitleView()
            .preferredColorScheme(.light)
            .previewLayout(.sizeThatFits)
    }
}
