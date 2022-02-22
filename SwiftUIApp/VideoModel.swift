//
//  VideoModel.swift
//  SwiftUIApp
//
//  Created by MacBookPro on 22.02.2022.
//

import Combine

final class VideoModel: ObservableObject {
    @Published var title: String = "Apples"
    @Published var description: String = "Eating big apples"
}
