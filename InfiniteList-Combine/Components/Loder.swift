//
//  Loder.swift
//  InfiniteList-Combine
//
//  Created by Quin Design on 25/08/2023.
//

import SwiftUI

struct LoaderView: View {
    let isFailed: Bool
    var body: some View {
        HStack{
            ProgressView()
            Text(isFailed ? "Failed. Tap to retry." : "Loading...")
                .foregroundColor(isFailed ? .red : .green)
                .padding()
        }
    }
}

struct LoaderView_Previews: PreviewProvider {
    static var previews: some View {
        LoaderView(isFailed: false)
    }
}

